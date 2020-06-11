/*
 * [Intro]
 *
 * ECE544 - Project POV
 * Thong Doan & Abhiraj Eksambekar
 * ==================================================
 * [Descriptions]
 *
 * This application runs on the POV display's NodeMCU,
 * acts as the server
 * 
 */

#include <ESP8266WiFi.h>
#include <FastLED.h>

// ****************************************************************************************************
// DEFINES
// ****************************************************************************************************

#define UART_BUFF_RECEIVE_MAX  2048   // max size of the receive buffer
#define LED_PIN 7                     // pin of the built-in led
#define hallPin D2                    // pin of the Hall sersor
#define NUM_LED 10                    // Number of LEDs, rows in the display matrix
#define colNum 34                     // Number of columns in the display matrix

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

// Misc
int ledPin = LED_BUILTIN;             // on-board LED

// WIFI
const char* ssid = "Abhiraj";         // WiFi SSID
const char* password = "ldragneel";   // WiFi password
WiFiServer server(80);                // server using port 80
WiFiClient the_client;                // the FPGA NodeMCU client

// POV message
pov_msg_t pov_msg;                    // the exchange message
CRGB leds[NUM_LED];                   // the RGB LED strip, used for the FastLED library
long LEDstrip[NUM_LED];               // the RGB LED strip, extracted by each column from the display matrix
long dispMatrix[NUM_LED][colNum];     // the display matrix

// Hall sensor
bool reset;                           // reset signal by the Hall sensor

// ****************************************************************************************************
// FUNCTION DECLARATIONS
// ****************************************************************************************************

void displayStrip();
void matrixUpdate();
void displayCompleteMatrix();
ICACHE_RAM_ATTR void hallInterrupt();
void connect_client();
void pov_msg_receive(pov_msg_t* p_msg);

// ****************************************************************************************************
// FUNCTIONS
// ****************************************************************************************************

/*
 * Setup hardware
 */
void setup() {

  // Setup LEDs
  FastLED.addLeds<WS2812, LED_PIN, GRB>(leds,NUM_LED);

  // Setup Serial
  Serial.begin(115200);
  delay(10);
  pinMode(hallPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(hallPin), hallInterrupt, FALLING);

  // Turn on LED
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
 
  // Connect to WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
 
  // Start the server
  server.begin();
  Serial.println("Server started");
 
  // Print the IP address
  Serial.print("Use this URL to connect: ");
  Serial.print("http://");
  Serial.print(WiFi.localIP());
  Serial.println("/");
}

/*
 * The main loop
 */
void loop() {

  // --------------------------------------------------
  // declarations
  // --------------------------------------------------
  
  bool is_new_msg;    // client sends new message

  // --------------------------------------------------
  // try to connect to the client
  // --------------------------------------------------
  connect_client();

  // --------------------------------------------------
  // receive data
  // --------------------------------------------------
  is_new_msg = false;
  if (the_client.connected()){
    if (the_client.available()){
      is_new_msg = true;
      pov_msg_receive(&pov_msg);
    }
  } else {
    Serial.println("Client disconnected");
  }

  // --------------------------------------------------
  // convert from message to display matrix
  // --------------------------------------------------
  if (is_new_msg){
    Serial.println("New message");
    for(int i = 0; i< 10; i++){
      for(int j=0; j<34; j++){
        dispMatrix[i][j] = pov_msg.msg[(i*34 + j)*4];
        dispMatrix[i][j] = (dispMatrix[i][j] << 8) | pov_msg.msg[(i*34 + j)*4 + 1];
        dispMatrix[i][j] = (dispMatrix[i][j] << 8) | pov_msg.msg[(i*34 + j)*4 + 2];
        dispMatrix[i][j] = (dispMatrix[i][j] << 8) | pov_msg.msg[(i*34 + j)*4 + 3];
      }
    }
  }

  // --------------------------------------------------
  // update display matrix to the POV
  // --------------------------------------------------
  displayCompleteMatrix();
  reset = 0;

}

/*
 * Connect to the only client
 */
void connect_client(){

  // do nothing if the client is connected
  if (the_client.connected()){
    return;
  }
  
  while (!the_client){
    
    // delay before reconnecting
    delay(10);
    the_client = server.available();
  }
  Serial.println("Connected to client: " + the_client.remoteIP().toString());
}

/*
 * Receive a POV message
 */
void pov_msg_receive(pov_msg_t* p_msg){

  // declarations
  int n_bytes_received;
  
  // receive & construct data size
  n_bytes_received = the_client.readBytes(p_msg->msg, 2);
  p_msg->length = 0 | (p_msg->msg[0] << 8);
  p_msg->length = p_msg->length | p_msg->msg[1];
  Serial.println("Data_size=" + String(p_msg->length));

  // do nothing if data is too big for the buffer
  if (p_msg->length > UART_BUFF_RECEIVE_MAX){
    Serial.println("Data is too big. Stop receiving.\n");
    return;
  }

  // receive data
  n_bytes_received = the_client.readBytes(p_msg->msg, p_msg->length);

  // end string & print
  p_msg->msg[p_msg->length] = 0;
  Serial.println("Data=[" + String(p_msg->msg) + "]");
}

/*
 * Hall sensor interrupt handler
 */
ICACHE_RAM_ATTR void hallInterrupt(){
  reset = 1;
}

/*
 * Display the matrix by synchronizedly turning on/off the LEDs
 */
void displayCompleteMatrix(){
  for (size_t i = 0; i < colNum; i++)
  {
    for (size_t j = 0; j < NUM_LED; j++)
    {
      LEDstrip[j] = dispMatrix[j][i];
    }
    if (reset)
      break;    
    displayStrip();    
  }
}

/*
 * Turn on/off the LEDs on the strip
 */
void displayStrip(){
  int red, green, blue;
  for (size_t i = 0; i < NUM_LED; i++)
  {
    red = LEDstrip[i] & 0xFF;
    green = (LEDstrip[i] >> 8) & 0xFF;
    blue = (LEDstrip[i] >> 16) & 0xFF;
    leds[i] = CRGB(red,green,blue);
  }
  FastLED.show();
}
