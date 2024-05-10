# 0x08. Networking basics #1

### Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:<br>

### General
What is localhost/127.0.0.1<br>
What is 0.0.0.0<br>
What is /etc/hosts<br>
How to display your machine’s active network interfaces<br>


# Tasks
## 0. Change your home IP
mandatory
Write a Bash script that configures an Ubuntu server with the below requirements.<br>

Requirements:<br>

localhost resolves to 127.0.0.2<br>
facebook.com resolves to 8.8.8.8.<rb>
The checker is running on Docker, so make sure to read this,<br>
Example:<br>
``` shell
    sylvain@ubuntu$ ping localhost
    PING localhost (127.0.0.1) 56(84) bytes of data.
    64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.012 ms
    ^C
    --- localhost ping statistics ---
    1 packets transmitted, 1 received, 0% packet loss, time 0ms
    rtt min/avg/max/mdev = 0.012/0.012/0.012/0.000 ms
    sylvain@ubuntu$
    sylvain@ubuntu$ ping facebook.com
    PING facebook.com (157.240.11.35) 56(84) bytes of data.
    64 bytes from edge-star-mini-shv-02-lax3.facebook.com (157.240.11.35): icmp_seq=1 ttl=63 time=15.4 ms
    ^C
    --- facebook.com ping statistics ---
    1 packets transmitted, 1 received, 0% packet loss, time 0ms
    rtt min/avg/max/mdev = 15.432/15.432/15.432/0.000 ms
    sylvain@ubuntu$
    sylvain@ubuntu$ sudo ./0-change_your_home_IP
    sylvain@ubuntu$
    sylvain@ubuntu$ ping localhost
    PING localhost (127.0.0.2) 56(84) bytes of data.
    64 bytes from localhost (127.0.0.2): icmp_seq=1 ttl=64 time=0.012 ms
    64 bytes from localhost (127.0.0.2): icmp_seq=2 ttl=64 time=0.036 ms
    ^C
    --- localhost ping statistics ---
    2 packets transmitted, 2 received, 0% packet loss, time 1000ms
    rtt min/avg/max/mdev = 0.012/0.024/0.036/0.012 ms
    sylvain@ubuntu$
    sylvain@ubuntu$ ping facebook.com
    PING facebook.com (8.8.8.8) 56(84) bytes of data.
    64 bytes from facebook.com (8.8.8.8): icmp_seq=1 ttl=63 time=8.06 ms
    ^C
    --- facebook.com ping statistics ---
    1 packets transmitted, 1 received, 0% packet loss, time 0ms
    rtt min/avg/max/mdev = 8.065/8.065/8.065/0.000 ms
```

In this example we can see that:<br>

before running the script, localhost resolves to 127.0.0.1 and facebook.com resolves to 157.240.11.35<br>
after running the script, localhost resolves to 127.0.0.2 and facebook.com resolves to 8.8.8.8<br>
If you’re running this script on a machine that you’ll continue to use, be sure to revert localhost to 127.0.0.1. Otherwise, a lot of things will stop working!<br>

###### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x08-networking_basics_2<br>
File: 0-change_your_home_IP<br>


## 1. Show attached IPs
mandatory<br>
Write a Bash script that displays all active IPv4 IPs on the machine it’s executed on.<br>

Example:<br>
``` shell
    sylvain@ubuntu$ ./1-show_attached_IPs | cat -e
    10.0.2.15$
    127.0.0.1$
    sylvain@ubuntu$
```

Obviously, the IPs displayed may be different depending on which machine you are running the script on.<br>

Note that we can see our localhost IP :)<br>

##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x08-networking_basics_2<br>
File: 1-show_attached_IPs<br>

## 2. Port listening on localhost
#advanced<br>
Write a Bash script that listens on port 98 on localhost.<br>

Terminal 0<br>

Starting my script.<br>
``` shell
sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
```
Terminal 1<br>

Connecting to localhost on port 98 using telnet and typing some text.<br>
``` shell
    sylvain@ubuntu$ telnet localhost 98
    Trying 127.0.0.2...
    Connected to localhost.
    Escape character is '^]'.
    Hello world
    test
```
Terminal 0<br>

Receiving the text on the other side.<br>
``` shell
    sylvain@ubuntu$ sudo ./100-port_listening_on_localhost
    Hello world
    test
```

For the sake of the exercise, this connection is made entirely within localhost. This isn’t really exciting as is, but we can use this script across networks as well. Try running it between your local PC and your remote server for fun!<br>

As you can see, this can come in very handy in a multitude of situations. Maybe you’re debugging socket connection issues, or you’re trying to connect to a software and you are unsure if the issue is the software or the network, or you’re working on firewall rules… Another tool to add to your debugging toolbox!<br>

##### Repo:

GitHub repository: alx-system_engineering-devops<br>
Directory: 0x08-networking_basics_2<br>
File: 100-port_listening_on_localhost<br>
