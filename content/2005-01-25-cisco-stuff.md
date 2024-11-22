---
title: Cisco Stuff
author: Unxmaal
type: post
date: 2005-01-25T00:00:00+00:00
url: /archives/1664
categories:
  - Tech

---
Because I always forget, and end up having to scour Google:

[Standard Break Key Sequence Combinations During Password Recovery][1] for Cisco Routers. 

The most important bit here, for me, is &#8220;How to Simulate a Break Key Sequence&#8221;:

> This is useful if your terminal emulator doesn&#8217;t support the break key, or if a bug prevents it from sending the correct signal (the hyperterminal under Windows NT used to suffer from this behavior):
> 
> 1. Connect to the router with the following terminal settings:  
> 1200 baud rate  
> No parity  
> 8 data bits  
> 1 stop bit  
> No flow control
> 
> You no longer see any output on your screen. This is normal.
> 
> 2. Power cycle (switch off and then on) the router and THEN press the spacebar for 10-15 seconds. This generates a signal similar to the break sequence. [Here it helps to count to 2 after powering on before hitting the space bar].  
> 3. Disconnect your terminal and reconnect with a 9600 baud rate. You should now be in ROM Monitor mode. 

This is important for me because the very wonderful (but abandonware?) <a href=http://homepage.mac.com/dalverson/zterm/">ZTerm</a> terminal emulator for OSX does not seem to pass the correct break sequence to a Cisco router. 

And the next most important link, [Cisco Password Recovery Procedures][2].

 [1]: http://www.cisco.com/warp/public/701/61.html
 [2]: http://www.cisco.com/warp/public/474/