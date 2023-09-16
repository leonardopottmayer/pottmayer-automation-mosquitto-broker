# Basic Mosquitto Broker

## Description
A Mosquitto broker is an MQTT server used in the Internet of Things (IoT) to facilitate message exchange between devices. It acts as an intermediary, allowing devices to publish and receive messages on specific topics. Mosquitto manages Quality of Service (QoS), provides security and TLS/SSL support, and is crucial for efficient communication in IoT systems.


## Steps to run this project:

1. Run 
    `docker build -t pottmayer-automation-mosquitto-broker .`
   command inside the project folder
2. Run 
    `docker run -d --name pottmayer-automation-mosquitto-broker-container -p 1883:1883 pottmayer-automation-mosquitto-broker`
   command
