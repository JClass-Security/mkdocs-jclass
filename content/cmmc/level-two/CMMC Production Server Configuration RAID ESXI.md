---
title: |
  ENVITECHTechnical Document (CMMC PRODUCTION SERVER CONFIGURATION)

  ![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image1.jpg){width="4.678260061242344in"
  height="3.9701990376202976in"}
---

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image2.png)

https://www.j-class.com/

# **Configuration idrac**

-   First, you will have to configure the **iDRAC**

-   ![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image3.jpeg)Navigate to access **BIOS** \>
**iDRAC** \> Disable **IPV6** and set the IP address in **IPV4**

# **CONFIGURAITON RAID CONTROLLER**

-   ## Verify the RAID Controller in Server

Once you will configure the **iDRAC**. Access the Idrac from the
browser with help of put the IP address of idrac and verify the
hardware controller of **RAID**. Does the **RAID** controller
available and properly installed on the server or not?
Access server through IP address \> Storage \> Controller

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image4.jpeg)

-  ## Remove the Existing RAID via iDRAC

Remove the existing **RAID** if any is already created by default

Navigate to Storage \> **Virtual Disk** \> select the virtual disk "if
any available or created"\
navigate to action \> expand the action tab and click on **Delete**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image5.jpeg)

-  ## Remove the Existing RAID via BIOS

Once you will power on the server immediately press **F2** it will
redirect to the server **BIOS** setting

Navigate to system Setup \> Integrated **RAID** controller \>
**Virtual Disk** and check if any virtual disk is already created \>
Select operation \> **Delete Virtual Disk**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image6.jpeg)

Once you will "**Delete Virtual Disk**" it will show the screen for
successfully deleted.

-   ![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image7.jpeg)
   ## Configuration New virtual Disk (RAID Configuration)

Navigate to **System Setup** \> **Configuration Management** \> **Create
a Virtual Disk**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image8.jpeg)

-   ## Configuration of the Lifecycle Controller

Navigate to **BIOS** \> lifecycle controller \> setup the Language and
hit exit it will ask you **SAVE** & changes

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image9.jpeg)

Navigate to NIC "**lifecycle controller Network Settings**"

Select Broadcom NetXtreme Gigabit Ethernet NIC 1 and set the IP address,
Subnet Mask & GW

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image10.jpeg)

-   ## VLAN Setting "LiveCycle Controller"

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image11.jpeg)
Navigate to "**Lifecycle Controller VLAN
setting**" and set the VLAN as per your desired requirement

-   ## Configuration RAID Configuration(Using Lifecycle)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image12.jpeg)
Navigate to your browser address bar \>
type Lifecycle controller IP address \> and hit enter it will redirect
to the following screen as mentioned below.
Once you will access the lifecycle \> Navigate to **Configure RAID**
and select **RAID Controller\
 e.g. **PERC H365 Front** and Windows **RAID**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image13.jpeg)

-   ## RAID Level

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image14.jpeg)
Here you can select the **RAID** level **Raid 0, Raid
1, Raid 5, Raid 6, Raid 10, Raid 50, and Raid 80**

-   ## Physical Disks

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image15.jpeg)
Select the physical Disk which you want to convert in
the **RAID**

-   ## Virtual Disk Attributes

After selecting the physical Disks, create the virtual disk

Select the Name of the **Virtual Disk** e.g. "**ESXI RAID 1**" and hit
exit it will ask you to SAVE changes and exit and click on the **Yes**
button

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image16.jpeg)

This is the final review of your **RAID** configuration on **Lifecycle**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image17.jpeg)

Once you will configure all things it will ask you **YES** or **No**
e.g. you want to **SAVE** the configuration or not so you have to select
**YES** to save the configurations

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image18.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image19.jpeg)
Once you will SAVE the configuration it
will start configuring the **RAID** set/configurations.

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image20.jpeg)

To validate the **RAID** configuration and setting you can go to the
virtual disk and review the **RAID** configuration/setting.

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image21.jpeg)

# **Installation and configuration VMware, ESXI 7.0.3**

After the configuration of the **RAID** and basic configuration at
**Dell PowerEdge R350.**

-   Take the control of server **Dell PowerEdge R350** using **iDRAC**
    IP address 10.10.10.2

-   Connect **ESXI** media (ISO File)

-   Create New Machine and verify the version of **ESXI**

-   Verify the **RAID** Controller

Login in **iDRAC** using the IP address:

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image22.PNG)

Activate the Virtual Console\
To get access to **Physical Server** using the virtual console

-   Navigate to **iDRAC** using IP address \> Virtual Console

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image23.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image24.jpg)
Connect the **virtual media** to boot the
new image

Once you will connect the **Virtual Media** It will ask you to connect
the **ISO** file to install the new **EXSI**

Navigate to the physical machine from where you took the control of
the physical machine and select the ISO file

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image25.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image26.jpg)
Set the server **BOOT** from virtual
**CD/DVD/ISO** and verify the confirmed New **Boot**


![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image27.jpeg)

After confirming and **SAVE** the setting of boot on the server reboot
the server and immediately press **F11** to get into the **Boot
Manager**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image28.jpeg)

***Note**: The following step will be only for one time*

Navigate to "**One-Shot UEFI Boot Menu**" \> Virtual Optical Drive

It will start the installation of **ESXI** from the mapped virtual
drive

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image29.jpeg)

# **Installation OF the ESXI 7.0.3 on THE Server**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image30.jpeg)
Once you will see the welcome page of
**ESXI** for installation go to **(Enter) Continue**

Press **F11 (accept and Continue)** to Continue the installation & then
it will take some time.

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image31.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image32.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image33.jpeg)
Here you have to select the destination
"**Storage"** at where you want to install the **ESXI** and then
confirm the selection by pressing the **F11**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image34.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image35.jpeg)

Once the installation will be done. Disconnect the **Virtual Media**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image36.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image37.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image38.jpeg)
Once you will disconnect the **Virtual
Media** the server will reboot and start as normal and will boot from
**ESXI**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image39.jpeg)



![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image40.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image41.jpeg)

# **Assign IP address** 

Disable the **IPV6** \> Navigate yourself to the network card and
select the network card in which you want to set the **IPV4**

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image42.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image43.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image44.jpeg)

# **Access the ESXI using THE IP Address**

Once the **IPV4** configuration completed

Navigate to another machine **Desktop/Laptop** within the same network
and assign the license on it for **ESXI**.

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image45.jpeg)
Navigate \> Mange under host \> go to
Licensing \> and put the **ESXi** License and click on check license
to validate whether it's fine or not.

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image46.jpg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image47.jpg)

# **Configure the DATA STORAGE "RAID"**

Navigate to \> **Storage** \> New Data Store \> and select "Create new
**VMFS** Data Store"and then click on **Next** Button

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image48.jpeg)

Select the Name as per your requirement \> select the Local **Dell
Disk** and click Next

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image49.jpeg)
Select the Free partition Space as you can see in pic highlighted with a
"**Red**" outline and then select the **Next** button

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image50.jpeg)

You will see the **RAID Storage** has been configured

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image51.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image52.jpg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image53.jpg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image54.jpeg)

![](vertopal_8fcbdc58acf64d1a8dd0a732c2d6b5ac/media/image55.jpg)

Conclusion!
