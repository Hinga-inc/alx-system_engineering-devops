# 0x07-networking_basics

## Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:<br>

### OSI Model
What it is<br>
How many layers it has<br>
How it is organized<br>
### What is a LAN
Typical usage<br>
Typical geographical size<br>
### What is a WAN
Typical usage<br>
Typical geographical size<br>
### What is the Internet
What is an IP address<br>
What are the 2 types of IP address<br>
What is localhost<br>
What is a subnet<br>
Why IPv6 was created<br>
### TCP/UDP
What are the 2 mainly used data transfer protocols for IP (transfer level on the OSI schema)<br>
What is the main difference between TCP and UDP<br>
What is a port<br>
Memorize SSH, HTTP and HTTPS port numbers<br>
What tool/protocol is often used to check if a device is connected to a network<br>

### Tasks

## 0. OSI model
mandatory<br>
OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.<br>

It is organized from the lowest level to the highest level:<br>

The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal<br>
The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc<br>
Keep in mind that the OSI model is a concept, it’s not even tangible. The OSI model doesn’t perform any functions in the networking process. It is a conceptual framework so we can better understand complex interactions that are happening. Most of the functionality in the OSI model exists in all communications systems.<br>

In this project we will mainly focus on:<br>

The Transport layer and especially TCP/UDP<br>
On the Network layer with IP and ICMP<br>
The image bellow describes more concretely how you can relate to every level.<br>

##### Questions:

What is the OSI model?<br>

Set of specifications that network hardware manufacturers must respect<br>
The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology<br>
The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology<br>
How is the OSI model organized?<br>

Alphabetically<br>
From the lowest to the highest level<br>
Randomly<br>
##### Repo:<br>

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 0-OSI_model <br>

## 1. Types of network
mandatory<br>

LAN connect local devices together, WAN connects LANs together, and WANs are operating over the Internet.<br>

###### Questions:

What type of network a computer in local is connected to?<br>

Internet<Br>
WAN<br>
LAN<br>
What type of network could connect an office in one building to another office in a building a few streets away?<br>

Internet<br>
WAN<br>
LAN<br>
What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?<br>

Internet<br>
WAN<br>
LAN<br>
##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 1-types_of_network<br>


## 2. MAC and IP address
mandatory<br>


##### Questions:

What is a MAC address?<br>

The name of a network interface<br>
The unique identifier of a network interface<br>
A network interface<br>
What is an IP address?<br>

Is to devices connected to a network what postal address is to houses<br>
The unique identifier of a network interface<br>
Is a number that network devices use to connect to networks<br>
###### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 2-MAC_and_IP_address<br>

## 3. UDP and TCP
mandatory<br>

Let’s fill the empty parts in the drawing above.<Br>

##### Questions:

Which statement is correct for the TCP box:<br>
It is a protocol that is transferring data in a slow way but surely<br>
It is a protocol that is transferring data in a fast way and might loss data along in the process<br>
Which statement is correct for the UDP box:<br>
It is a protocol that is transferring data in a slow way but surely<br>
It is a protocol that is transferring data in a fast way and might loss data along in the process<br>
Which statement is correct for the TCP worker:<br>
Have you received boxes x, y, z?<br>
May I increase the rate at which I am sending you boxes?<br>
##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 3-UDP_and_TCP<br>


## 4. TCP and UDP ports
mandatory<br>
Once packets have been sent to the right network device using IP using either UDP or TCP as a mode of transportation, it needs to actually enter the network device.<br>

If we continue the comparison of a network device to your house, where IP address is like your postal address, UDP and TCP ports are like the windows and doors of your place. A TCP/UDP network device has 65535 ports. Some of them are officially reserved for a specific usage, some of them are known to be used for a specific usage (but nothing is officially declared) and the rest are free of use.<br>

While the full list of ports should not be memorized, it is important to know the most used ports, let’s start by remembering 3 of them:<br>

- 22 for SSH<br>
- 80 for HTTP<br>
- 443 for HTTPS<br>
Note that a specific IP + port = socket.<br>

Write a Bash script that displays listening ports:<br>

- That only shows listening sockets<br>
- That shows the PID and name of the program to which each socket belongs<br>
Example:<br>

``` shell
    sylvain@ubuntu$ sudo ./4-TCP_and_UDP_ports
    Active Internet connections (only servers)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
    tcp        0      0 *:sunrpc                *:*                     LISTEN      518/rpcbind
    tcp        0      0 *:ssh                   *:*                     LISTEN      1240/sshd
    tcp        0      0 *:32938                 *:*                     LISTEN      547/rpc.statd
    tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN      518/rpcbind
    tcp6       0      0 [::]:ssh                [::]:*                  LISTEN      1240/sshd
    tcp6       0      0 [::]:33737              [::]:*                  LISTEN      547/rpc.statd
    udp        0      0 *:sunrpc                *:*                                 518/rpcbind
    udp        0      0 *:691                   *:*                                 518/rpcbind
    udp        0      0 localhost:723           *:*                                 547/rpc.statd
    udp        0      0 *:60129                 *:*                                 547/rpc.statd
    udp        0      0 *:3845                  *:*                                 562/dhclient
    udp        0      0 *:bootpc                *:*                                 562/dhclient
    udp6       0      0 [::]:47444              [::]:*                              547/rpc.statd
    udp6       0      0 [::]:sunrpc             [::]:*                              518/rpcbind
    udp6       0      0 [::]:50038              [::]:*                              562/dhclient
    udp6       0      0 [::]:691                [::]:*                              518/rpcbind
    Active UNIX domain sockets (only servers)
    Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
    unix  2      [ ACC ]     STREAM     LISTENING     7724     518/rpcbind         /run/rpcbind.sock
    unix  2      [ ACC ]     STREAM     LISTENING     6525     1/init              @/com/ubuntu/upstart
    unix  2      [ ACC ]     STREAM     LISTENING     8559     835/dbus-daemon     /var/run/dbus/system_bus_socket
    unix  2      [ ACC ]     STREAM     LISTENING     9190     1087/acpid          /var/run/acpid.socket
    unix  2      [ ACC ]     SEQPACKET  LISTENING     7156     378/systemd-udevd   /run/udev/control
    sylvain@ubuntu$
```

##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 4-TCP_and_UDP_ports<br>


## 5. Is the host on the network
mandatory<br>


The Internet Control Message Protocol (ICMP) is a protocol in the Internet protocol suite. It is used by network devices, to check if other network devices are available on the network. The command ping uses ICMP to make sure that a network device remains online or to troubleshoot issues on the network.<br>

Write a Bash script that pings an IP address passed as an argument.<br>

Requirements:<br>

Accepts a string as an argument<br>
Displays Usage: 5-is_the_host_on_the_network {IP_ADDRESS} if no argument passed<br>
Ping the IP 5 times<br>
Example:<br>
``` shell
    sylvain@ubuntu$ ./5-is_the_host_on_the_network 8.8.8.8
    PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
    64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
    64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
    64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
    64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
    64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

    --- 8.8.8.8 ping statistics ---
    5 packets transmitted, 5 received, 0% packet loss, time 4006ms
    rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
    sylvain@ubuntu$
    sylvain@ubuntu$ ./5-is_the_host_on_the_network
    Usage: 5-is_the_host_on_the_network {IP_ADDRESS}
    sylvain@ubuntu$ 
```

It is interesting to look at the time value, which is the time that it took for the ICMP request to go to the 8.8.8.8 IP and come back to my host. The IP 8.8.8.8 is owned by Google, and the quickest roundtrip between my computer and Google was 7.57 ms which is pretty fast, which is a sign that the network path between my computer and Google’s datacenter is in good shape. A slow ping would indicate a slow network.<br>

Next time you feel that your connection is slow, try the ping command to see what is going on!<br>

##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x07-networking_basics<br>
File: 5-is_the_host_on_the_network<br>