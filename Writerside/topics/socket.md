# socket

## Definition
A **socket** refers to a software endpoint
that establishes communication between two computer processes across a computer network.
A socket is essentially a combination of an IP address and a port number.

Here are some key points about sockets:

1. **Communication Endpoint:** A socket serves as a communication endpoint in a network. It enables data to be sent from one process on a device to another process on a different device.

2. **Unique Identifier:** A socket is identified by a combination of an IP address and a port number. The IP address identifies the host or device, while the port number identifies a specific application or process on that host.

3. **Socket Types:** There are two main types of sockets: stream sockets (e.g., TCP) and datagram sockets (e.g., UDP). Stream sockets provide a reliable, connection-oriented communication, while datagram sockets provide a connectionless, less reliable communication.

4. **Listening and Connecting:** A socket can be in a listening state, waiting for incoming connections, or in a connected state, actively communicating with another socket.

5. **Used in Networking Protocols:** Sockets are a fundamental concept in network programming and are used by various networking protocols such as TCP (Transmission Control Protocol) and UDP (User Datagram Protocol).

## Check for listening socket on a specific port

To check for listening sockets on a specific port
and verify if a particular service is actively listening for incoming connections on a specific port.
You can run the command bellow.
```bash
ss -tnl | grep <PORT_NUMBER>
```

With:

`-t`: Filters results to only show TCP sockets.

`-n`: Shows numerical addresses instead of resolving hostnames.

`-l`: Displays only listening sockets.