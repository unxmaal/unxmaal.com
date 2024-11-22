---
title: Printing from WinXP to OSX
author: Unxmaal
type: post
date: 2003-07-20T00:00:00+00:00
url: /archives/880
categories:
  - Apple

---
After hours of banging on it, I finally figured out how to enable printing via SMB from a Windows XP machine to a Mac OSX machine.

You&#8217;d think that with a Mac it&#8217;d be a point-and-click deal. 

Think again. &#8220;Think different.&#8221;

Refer to [William White&#8217;s guide][1] for a detailed list. 

The steps, in my particular case, are as follows:

1. Download and install the [Gimp-Print][2] drivers. This step is pretty straightforward, although you may need to install the ESP Ghostscript drivers too.

2. Add a print queue that uses the Gimp-Print drivers. Note that here, you&#8217;ll see your existing printer. You&#8217;re adding a new print queue for that existing USB printer, not another printer. Follow the directions listed in the guide and you&#8217;ll have no problems. I prefer naming the printer something simple, like &#8220;printer&#8221;.

3. Configure Samba. This is the part that was the worst for me. I recommend following option D in the guide, with some modifications. I tried using this file many times, but my XP machine was not able to see the USB printer. I finally changed the line <tt>"browseable = no"</tt> to <tt>"browseable = yes"</tt>. This is probably a security risk if you aren&#8217;t behind a firewall. 

Remember to restart smbd and nmbd after any change to your smb.conf file. The commands are &#8220;<tt>sudo killall -HUP nmbd</tt>&#8221; and &#8220;<tt>sudo killall -HUP smbd</tt>&#8220;. 

Also be sure to follow the tests as listed in steps 3.4 and 3.5 in the guide. If your Windows XP machine doesn&#8217;t list the two print queues when you run &#8220;net view \macservername&#8221; from the command prompt, you&#8217;ve done something wrong and it absolutely won&#8217;t work. 

4. Configure CUPS. I wanted to use the Windows XP driver for my printer, so I modified the files /etc/cups/mime.type and /etc/cups/mime.conv file as listed in this [Apple KnowledgeBase article][3].

5. Add the printer in Windows. This is fairly straightforward: Control Panel, Printers and Faxes, Add Printer, select Connect to This Printer, and type in <tt>\macservername\what_you_named_your_print_queue</tt> . If you&#8217;ve enabled raw printing, pick out the correct driver from the list. 

6. Try to print something. If it doesn&#8217;t, don&#8217;t ask me why. Retry your steps and verify those tests listed in the guide. 

7. A big gotcha, according to some sources, is that you will have to kill and restart smbd every time you boot. Per the guide, &#8220;Samba Printer sharing, although configured, is only enabled when the CUPS daemon is up and running. Mac OSX starts up cupsd only after smbd.&#8221; 

I&#8217;ll do some investigation later to find out how to modify the OSX services startup sequence.

 [1]: http://homepage.mac.com/william_white/print_to_samba.html
 [2]: http://gimp-print.sourceforge.net/MacOSX.php3
 [3]: http://discussions.info.apple.com/WebX?50@61.gmStadtfiot.5@.3bbc68b2