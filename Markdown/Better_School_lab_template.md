```
---
title: "LAB"
author: ["Name"]
date: "2023-07-14"
subject: "Markdown"
keywords: [Abstract, Introduction, Objectives, Proceedure, Results, Conclusion, Appendix, References]
subtitle: "Class and Professor"
lang: "en"
titlepage: true
titlepage-color: "1E90FF"
titlepage-text-color: "FFFAFA"
titlepage-rule-color: "FFFAFA"
titlepage-rule-height: 2
book: false
classoption: oneside
code-block-font-size: \scriptsize
header-includes:
  - \usepackage{hanging}
---
\newpage
# Abstract

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN

In this lab you will perform reconnaissance on eternal IP addresses over the Wide Area Network (WAN). This lab sports a specific topology involving a pfSense firewall. You will perform scanning tasks from a Kali Linux machine to identify the different open ports associated with the different machines. When scanning in this lab you will be able to determine the difference types of operating systems, explore different password hashes from the /etc/shadown file, and ultimately gain access to a windows machine through the Remote Desktop protocol (RDP). The overall goal is to showcase the ethical hacking process and the value it can provide and organization. Throughout the lab you will get a brief overview of the process an ethical hacker takes. This methodology includes reconnaissance, scanning, gaining access, maintaining access, and clearing your tracks. Throughout this lab nmap will be used for scanning and John the Ripper will be deployed to crack passwords. By scanning, finding, and exploiting vulnerabilities in this lab demonstration, you will gain the ability to better protect an organization and enhance overall system security. 

## Lab 2: 1.5 InfoSec Lab: Scanning the Network on the LAN

In this lab you will use Kali Linux in conjunction with Metasploit’s Armitage. The environment you are dropped is a Local Area Network (LAN) with a vulnerable Postgres server. The focus is to scan the server find the vulnerabilities and exploit them with Metasploit / Armitage. The phases of ethical hacking come into play with reconnaissance, scanning, gaining access, maintaining access, and clearing your tracks during the lab. You will deploy advanced scanning techniques with nmap and Zenmap, then employ exploitation techniques with Metasploit and Armitage. The exploitation of found vulnerabilities can lead to an understanding of how to properly secure a network and protect against threats. The conclusion of this lab you will have scanned the LAN exploited a postgresql server crack the administrator hash and open up 4 separate meterpreter sessions. 

# Introduction

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN

Ethical hacking and penetration testing is the primary focus in this lab with an emphasis on the reconnaissance phase. The main way an organization identifies vulnerabilities in its environment is to hire ethical or white hat hackers. The lab will consist of scanning from an external IP address over a WAN with a Kali Linux machine. The main take away points are learning network scanning, banner grabbing techniques, and connecting to machines behind a firewall. Ethical conduct will be emphasized during this lab along with the value of reconnaissance which will set the foundation for exploitation.   

## Lab2: 1.5 InfoSec Lab: Scanning the Network on the LAN

In this lab you will be conducting penetration testing and explore modern cybersecurity practices. By practically applying techniques with Kali Linux and associated tools such as nmap, Metasploit, and Armitage to scan a LAN the user will gain valuable insight into network security. The LAN has a vulnerable Postgres server that you will exploit which will provide the hands on experience you will need to identify and remediate vulnerabilities in a network. 

# Objectives

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN

- Perform reconnaissance on a WAN and analyze the data for vulnerabilities.
- Use different tools to exploit the vulnerabilities found from the scans.

## Lab2: 1.5 InfoSec Lab: Scanning the Network on the LAN

- Perform reconnaissance on a LAN and analyze the data for vulnerabilities.
- Use Armitage to conduct scans, find vulnerabilities, and exploit vulnerabilites 

# Proceedures

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN

The first step in this lab is login into your Kali Linux machine and perform a nmap scan on "www.campus.edu". When the nmap scan comes back you will see a list of ports that are open. You will proceed to use the Net Cat (nc) tool, Telnet tool, and Metasploit to perform banner grabbing on the open ports. After banner grabbing is performed, you will then proceed to do another nmap scan on the discovered open ports except this time you will do version enumeration and run nmap default scripts on each open port. The next course of action is to login to the Telnet server with the provided credentials of the Metasploitable service that is running on the Telnet server. After logging in check who you are on the server, you should be root. With root credential you will now be able to look at the /etc/shadow folder which stores all password hashed on a Linux machine. You will then grab the “administrator” password hash, save it to a file and use John the ripper on your Kali machine to crack the hash. Now that you have the administrator password, you can now log into the windows machine through RDP. 

## Lab2: 1.5 InfoSec Lab: Scanning the Network on the LAN

In this lab you will first log into the Kali Linux machine and conduct an arp-scan with nmap which will reveal 4 machines. Afterwards the next order of business is to use nmap to conduct a TCP scan on all the found machines from the arp-scan. Once the TCP scan is complete you will perform an operating system scan with nmap on each machine and have the output directed to tails which shows the last 10 lines of output from the previous command. The next order is to conduct a default scan with nmap GUI called Zenmap. You will essentially get the exact same output you did with command line nmap. After scanning is completed, you will change directory over to the Armitage directory and start up Metasploit. In the Metasploit console you will do a database nmap scan so that the results are saved to the database, this allows Armitage to access the machines that have been found. When the database scan is complete you will launch Armitage from the Metasploit command line. All scanning and exploits will be done from Armitage from here on out. Once Armitage is up and running you will proceed to scan each machine in Armitage for exploits. Upon completion of scanning in Armitage you will go to the attack menu and click find attacks, this will allow an attack menu to pop up on each machine with found exploits. The first machine you need to exploit is the Linux machine ending in “.30” which has the postgres server on it. Once a meterpreter session is open you will drop into a shell and look at the /etc/shadow file and grab the administrator hash. To crack the hash, you will save the hash in a text file and run John the Ripper on it, the hash will crack, and you will have the clear text password. Now that you have the clear text password you will be able to log into the windows machine ending in “.10” through a telnet connection. Now that you are an authenticated user on a windows machine you have the ability to conduct authenticated attacks. Our next attack will be on the “.20” windows machine with a pass the hash attack utilizing the psexec function through Armitage calling a reverse shell to catch it in another meterpreter session. The last machine to exploit is the psSense firewall, this is done with a simple google search for default credentials. By entering the default credentials into the psSense firewall you will be logged in giving you a meterpreter session. At the end you will have a total of 4 meterpreter sessions. 

# Results

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN

The lab topology can be found in Figure 1. In Figure 2 you can find the initial nmap scan with all the open ports on the pfSense firewall. In Figure 3 – 7 you can see the banner grabbing, version enumeration, and default nmap script scans being performed with the output. Figure 6 shows the challenge flags, and Figure 7 is a more efficient way of scanning the open ports all at once. In Figure 8 you can see the login to the Metasploitable server hosted over Telnet. Figure 9 shows the use of the “id” command to see who you are along with another 3 challenge flags. Since root access was given with the login, Figure 10 shows the output of the /etc/shadow file and the administrator hash.  In Figure 11 you can see the use of John the Ripper brute forcing the hash with a dictionary attack and the plain text of the cracked hash. Figure 12 is the end of the lab showing a successful login to the windows machine over RDP using the cracked hash and administrator username. 

## Lab2: 1.5 InfoSec Lab: Scanning the Network on the LAN

The lab topology can be found in Figure 13. The nmap arp-scan can be found in Figure 14 where you can find all the discovered devices on the LAN. The nmap syn scan can be found in Figure 15 – 18 where the open ports can be seen. Figure 19 has the results of the operating system type nmap scan on all machines. The Zenmap scan can be found in Figure 20.  In figure 21 you can find the results of starting the postgresql server in the Armitage directory. Figure 22 has the results of the database nmap scan. Figure 23 shows the results of the Armitage scanning for exploits, the pfSense machine ending in “.254” did not have its picture animation show up but Armitage did identify the exploit. Figure 24 shows the exploit of the Linux machines vulnerable pfSense server on “.30” and the shell used to view the /etc/shadow file grabbing the administrator hash. Figure 25 show John the Ripper cracking the administrator hash with the clear text password. In Figure 26 you can see the login using telnet with the found administrator credentials on machine “.10”. Figure 27 shows the authenticated pass the hash attack performed on Armitage against the other windows machine on “.20” and Figure 28 shows the successful attack. Figure 29 shows the successful login to the psSense firewall with default credentials along with the 4 open meterpreter sessions.  

# Conclusion and Recomendations

## Lab 1: 1.4 InfoSec Lab: Performing Reconnaissance from the WAN
 
In conclusion, I would definitely recommend this lab as everything works and it demonstrates scanning techniques with nmap over a WAN and the use of John the Ripper. Instead of doing the same scan repeatedly on the different machines, it would be more productive to do all the machines in the same scan. I would recommend a better explanation of what John the Ripper was doing and what wordlist was being used to perform the dictionary attack on the administrator hash. 

## Lab2: 1.5 InfoSec Lab: Scanning the Network on the LAN

In conclusion, this lab revealed how easy it could be to exploit different operating systems with Armitage having limited knowledge about the underlying exploits. In my opinion this lab did not help me understand why the exploits worked. It felt like I was just throwing exploits at a machine and getting lucky almost. I think it would be more beneficial to figure out how the exploits were found and go through that process. This would give a better understanding of why you are doing what you are doing and why the exploits work. 

# Appendix

## Lab 1,2
### Figue 1
![Figure 1](../Week1_Lab/Figure1.png)
\newpage

### Figue 2
![Figure 2](../Week1_Lab/Figure2.png)
\newpage

### Figue 3
![Figure 3](../Week1_Lab/Figure3.png)
\newpage

### Figue 4
![Figure 4](../Week1_Lab/Figure4.png)
\newpage

### Figue 5
![Figure 5](../Week1_Lab/Figure5.png)
\newpage

### Figue 6
![Figure 6](../Week1_Lab/Figure6.png)
\newpage

### Figue 7
![Figure 7](../Week1_Lab/Figure7.png)
\newpage

### Figue 8
![Figure 8](../Week1_Lab/Figure8.png)
\newpage

### Figue 9
![Figure 9](../Week1_Lab/Figure9.png)
\newpage

### Figue 10
![Figure 10](../Week1_Lab/Figure10.png)
\newpage

### Figue 11
![Figure 11](../Week1_Lab/Figure11.png)
\newpage

### Figue 12
![Figure 12](../Week1_Lab/Figure12.png)
\newpage

### Figue 13
![Figure 13](../Week1_Lab/Figure13.png)
\newpage

### Figue 14
![Figure 14](../Week1_Lab/Figure14.png)
\newpage

### Figue 15
![Figure 15](../Week1_Lab/Figure15.png)
\newpage

### Figue 16
![Figure 16](../Week1_Lab/Figure16.png)
\newpage

### Figue 17
![Figure 17](../Week1_Lab/Figure17.png)
\newpage

### Figue 18
![Figure 18](../Week1_Lab/Figure18.png)
\newpage

### Figue 19
![Figure 19](../Week1_Lab/Figure19.png)
\newpage

### Figue 20
![Figure 20](../Week1_Lab/Figure20.png)
\newpage

### Figue 21
![Figure 21](../Week1_Lab/Figure21.png)
\newpage

### Figue 22
![Figure 22](../Week1_Lab/Figure22.png)
\newpage

### Figue 23
![Figure 23](../Week1_Lab/Figure23.png)
\newpage

### Figue 24
![Figure 24](../Week1_Lab/Figure24.png)
\newpage

### Figue 25
![Figure 25](../Week1_Lab/Figure25.png)
\newpage

### Figue 26
![Figure 26](../Week1_Lab/Figure26.png)
\newpage

### Figue 27
![Figure 27](../Week1_Lab/Figure27.png)
\newpage

### Figue 28
![Figure 28](../Week1_Lab/Figure28.png)
\newpage

### Figue 29
![Figure 29](../Week1_Lab/Figure29.png)
\newpage
  
# References
\begin{center}
\textbf{References}
\end{center}
\begin{hangparas}{.25in}{1}
Infosec Learning. (2023a). *Log in: Infosec learning*. Log in | Infosec Learning. \newline https://lab.infoseclearning.com/course/OMSQCMEHVR/lab/UWUENTBWQA 
\end{hangparas}
\begin{hangparas}{.25in}{1}
Infosec Learning. (2023b). *Log in: Infosec learning*. Log in | Infosec Learning. \newline https://lab.infoseclearning.com/course/OMSQCMEHVR/lab/SQFAQLDIBL
\end{hangparas}
```
