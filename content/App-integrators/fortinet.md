# **Rsyslog Fortinet Listener**

## Firewall/Linux = Java Port Listener
## Part 1: Configure the FortiGate firewall settings for your specific FortiOS operating system.
### Firewalls running FortiOS 4.x 
1. Open the FortiGate Management Console.
2. Now, navigate to Log & Report > Log Config > Log Settings. 
3. Select the Syslog check box.
4. Expand the Options section and complete all fields. 
    - In the Name/IP field, enter the IP address of the JclassAgent Syslog Server.
    - In the Port field, enter 514.
    - In the Level field, select the logging level where FortiGate should generate log messages.
        
        We recommend Level 6 - Information. 


    - In the Facility field, enter a specific syslog facility for the JclassAgent syslog server or use the default.
    - Make sure Enable CSV Format is unchecked.  
5. Click Apply.

### Firewalls running FortiOS 5.x or FortiOS 6.x 
In FortiOS 5.x and higher, syslog servers should be configured using a command line.
FortiOS allows up to 3 syslog servers on FortiOS 5.x and 4 syslog servers on ForiOS 6.x.

 - syslogd 
 - syslogd2
 - syslogd3
 - syslogd4

1. To configure your firewall running FortiOS 5.x or 6.x, open a command line on the device.
2. Before configuring one of the available syslog servers, find the first one that is not already in use by the following command:

```
config log {syslogd | syslogd2 | syslogd3 | syslogd4} setting
show
end
```
3. Enter the following commands to configure the chosen syslog server entry {syslogd|syslogd2|syslogd3|syslogd4} in the example below we are using syslogd and our JclassAgent syslog IP address is 192.168.3.15.
```
config global
config log syslogd setting 
set status enable
set csv disable
set server 192.168.3.15
set source-ip 10.2.2.2
end
```
For the server parameter, enter the IP address of the JclassAgent syslog server.
For the source-ip, enter the IP address of the firewall that will be sending the syslog messages to the JclassAgent syslog server.

## Part 2: Fortinet Java Listener
**Main function**
Main function creates a new server listener thread object with port: 514.
```
public class Main {

   public static void main(String[] args) {
       //514 is a port no             
       new ServerListener(514).start();;
   }
}
```

**ServerListener**
Java Datagram socket class represents a connectionless socket for sending and receiving datagram packets. It is a mechanism for transferring datagram packages over a network.
