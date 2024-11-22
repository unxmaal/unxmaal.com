---
title: WPA + FreeRadius + OSX
author: Unxmaal
type: post
date: 2004-09-12T00:00:00+00:00
url: /archives/991
categories:
  - Apple

---
In a fit of masochism, I decided to secure my Airport Express WLAN via WPA and Radius authentication. 

RADIUS authentication lets you manage access to your wireless LAN from a central RADIUS server, making it much more secure than storing authentication info on your wireless access points. 

I picked up a pre-compiled OSX package of [FreeRadius][1] from <a href=http://carpestellarem.com/Products/StellarRADIUSLite.php">Carpe Stellarem</a>. 

There are a few other ways to get FreeRadius, including via [Fink package][2], and by [Andreas Wolf&#8217;s installer][3]. 

Carpe Stellarem also sells a shareware, GUI-based RADIUS configurator app for $19, and I recommend you pay for it. I didn&#8217;t, because I am a fool, and because I wanted to learn how to configure RADIUS by hand, and because I am a fool. 

I found [this page][4] very useful, although it does not explain exactly what I wanted to do.

My installation steps are pretty much as follows:

>   * Install FreeRadius. 
>       * Modify /etc/raddb/clients.conf to have the IP of your Access Point, and a &#8220;shared secret&#8221;.  
>         <tt>client 192.168.1.50 {<br /> secret = testing123<br /> shortname = wifi<br /> nastype = other<br /> }</tt></p> 
>           * Add a user to /etc/raddb/users. Username should be the WiFi NIC&#8217;s MAC address, and the password should be the same [this is the only way it&#8217;d work for me.]  
>             <tt>0001020a0b0c Auth-Type := Local, User-Password == "0001020a0b0c"<br /> Reply-Message = "Hello, %u"</tt></p> 
>               * Configure your WAP [in my case, the Airport Extreme] to talk to the RADIUS server, using the &#8220;shared secret&#8221; you listed above. 
>                   * Start the RADIUS daemon in debug mode: /usr/local/sbin/radiusd -X 
>                       * Try to connect, and cross your fingers. Pay _very_ close attention to error messages; if you have problems, RADIUS will usually tell you exactly where you screwed up. </p></blockquote> 
>                         If you&#8217;ve done everything right, your client machine [laptop] will hop right onto your WLAN, with no fuss. The whole authentication mechanism takes place behind the scenes. If it does prompt you for a password, you&#8217;ve probably done something wrong in your users.conf file, so check it first. 
>                         
>                         Once you&#8217;ve proven that everything works, you&#8217;ll need to fiddle with making radiusd start on boot. For this to happen, it&#8217;ll have to be able to run &#8220;daemonized&#8221; &#8212; via /usr/local/sbin/radiusd . 
>                         
>                         I got stuck at this part; radiusd &#8220;reads configuration files&#8221;, then dies. The minimal [and rude] info I&#8217;ve found via searches indicates that /etc/raddb/radiusd.conf should have both &#8216;user=&#8217; and &#8216;group=&#8217; set to a user and group that have read/write permission to the RADIUS files and directories. However, even setting these to root/wheel didn&#8217;t fix the problem. If I find anything out, I&#8217;ll post the fix here. (I do wonder if it is a problem with the precompiled version of FreeRadius that I used.)

 [1]: http://www.freeradius.org/
 [2]: http://fink.sourceforge.net/
 [3]: http://homepage.mac.com/andreaswolf/public/freeradius_installer.html
 [4]: http://www.jepstone.net/index.cgi/2004/01/06/ "Jepstone.net"