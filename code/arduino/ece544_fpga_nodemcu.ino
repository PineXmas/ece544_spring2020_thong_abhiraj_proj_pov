/*
 * [Intro]
 *
 * ECE544 - Project POV
 * Thong Doan & Abhiraj Eksambekar
 * ==================================================
 * [Descriptions]
 *
 * This application runs on the FPGA's NodeMCU, acts
 * as the client connects to the POV's NodeMCU
 * 
 */

// ****************************************************************************************************
// LIBRARIES
// ****************************************************************************************************

#include <ESP8266WiFi.h>

// ****************************************************************************************************
// DEFINES
// ****************************************************************************************************

#define UART_BUFF_RECEIVE_MAX  2048   // max size of the receive buffer

// ****************************************************************************************************
// STRUCTS
// ****************************************************************************************************

// struct for a POV message
typedef struct {
  int length;                         // length of the message
  char msg[UART_BUFF_RECEIVE_MAX];    // the message
} pov_msg_t;

// ****************************************************************************************************
// GLOBAL VARIABLES
// ****************************************************************************************************

// WIFI
const char* ssid = "Abhiraj";         // SSID
const char* password = "ldragneel";   // Wifi password
const char* host = "192.168.43.63";   // IP of POV display
const int   port = 80;                // port of the host
WiFiClient client;                    // the client (this device) to send/receive data

// POV message
pov_msg_t pov_msg;                    // the exchange message

// ****************************************************************************************************
// FUNCTIONS
// ****************************************************************************************************

/*
 * Setup the hardware
 */
void setup() {

  // setup Serial
  Serial.println("Setup serial...");
  Serial.setTimeout(1000);
  Serial.begin(115200);

  // setup Wifi
  Serial.println("Setup WiFi...");
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.println("...");
  }
  Serial.print("WiFi connected. My IP is: ");
  Serial.println(WiFi.localIP());

  // connect to host
  Serial.println("Connecting to host...");
  while (!client.connect(host, port)) {
    delay(500);
  }
  Serial.println("Host connected");
}
 
/*
 * Main loop
 */
void loop(){

  // polling for data from FPGA
  if(Serial.available()>0) {

    // receive data
    pov_msg_receive(&pov_msg);

    // check connection to host
    if (!client.connected()){
      Serial.println("Host disconnected");
      return;
    }
  
    // send data to host
    Serial.println("Send data to host...");
    client.write( (char)((pov_msg.length >> 8) & 0x00FF) );
    client.write( (char)((pov_msg.length     ) & 0x00FF) );
    delay(5);
    client.write(pov_msg.msg, pov_msg.length);
    Serial.println("Data sent to host");
  }

}

/*
 * Receive a POV message
 */
void pov_msg_receive(pov_msg_t* p_msg){

  // declarations
  int n_bytes_received;
  
  // receive & construct data size
  n_bytes_received = Serial.readBytes(p_msg->msg, 2);
  p_msg->length = 0 | (p_msg->msg[0] << 8);
  p_msg->length = p_msg->length | p_msg->msg[1];
  Serial.println("Data_size=" + String(p_msg->length));

  // do nothing if data is too big for the buffer
  if (p_msg->length > UART_BUFF_RECEIVE_MAX){
    Serial.println("Data is too big. Stop receiving.\n");
    return;
  }

  // receive data
  n_bytes_received = Serial.readBytes(p_msg->msg, p_msg->length);

//  // end string & print
//  p_msg->msg[p_msg->length] = 0;
//  Serial.println("Data=[" + String(p_msg->msg) + "]");
}

/*
 * Check if the two given POV messages are equal
 */
bool pov_msg_equal(pov_msg_t* p_msg_1, pov_msg_t* p_msg_2){

  // compare length
  if (p_msg_1->length != p_msg_2->length){
    return true;
  }

  // compare contents
  for (int i=0; i<p_msg_1->length; i++){
    if (p_msg_1->msg[i] != p_msg_2->msg[i]){
      return true;
    }
  }

  return false;
}
