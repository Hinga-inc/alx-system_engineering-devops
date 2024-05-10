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
OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.

It is organized from the lowest level to the highest level:

The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal
The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc
Keep in mind that the OSI model is a concept, it’s not even tangible. The OSI model doesn’t perform any functions in the networking process. It is a conceptual framework so we can better understand complex interactions that are happening. Most of the functionality in the OSI model exists in all communications systems.



In this project we will mainly focus on:

The Transport layer and especially TCP/UDP
On the Network layer with IP and ICMP
The image bellow describes more concretely how you can relate to every level.



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