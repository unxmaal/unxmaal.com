---
title: Misadventures in Printing
author: Unxmaal
type: post
date: 2004-08-12T00:00:00+00:00
url: /archives/983
categories:
  - Diary

---
Last week I went to Birmingham and set up my sister&#8217;s home wireless LAN. She&#8217;s only now gotten her very first computer, which is a 14&#8243; G4 iBook. She&#8217;s already complained about &#8220;all the porn on the Internet&#8221;, and she&#8217;s sent her first dirty email Forward. 

I&#8217;m so proud.

I&#8217;d decided to hand-me-down my old Linksys 802.11b access point to her, but when I set it up at her house, it promptly died. This involved much obscenity, and a few trips to [Radio Trash][1]. She ended up with a nice Linksys 802.11g AP/Router, and I had none.

By the weekend, Apple&#8217;s Reality Distortion Field had convinced me to get an [Airport Express][2]. &#8220;Why, I need an AP now, and I need to get a printer, and this thing has a built-in print server.. for $130, which is about the same price as that Linksys and a separate print server.&#8221; 

Right. Enough rationalization for me; I bought it. 

In short, the AX is a very nice, very full-featured 802.11g access point/router, and is very very small. I was concerned about signal strength, since it had no external antennae, and since the old Linksys barely reached throughout my whole house. The AX gives out a very loud signal &#8212; full signal strength all through the house. I haven&#8217;t yet checked to see just how far the signal goes, but I&#8217;m sure it extends pretty far from the house. WPA was very easy to set up on both the AX and the client laptops, which is pretty important for such a loud device. I didn&#8217;t play with the much-touted &#8216;streaming of music to your stereo&#8217; feature, since my PC speakers are much better than my old stereo, and I just don&#8217;t care that much about that feature.

Next up was the printer. 

I asked around, and determined that the [HP Laserjet 1100][3] was both cheap and reliable, so I found one on Ebay, and had Laura snipe it for $85. That&#8217;s a pretty good deal for a low pagecount laser printer, plus toner cartridge. 

On Tuesday, the printer arrived. &#8220;Great! Except.. what&#8217;s this? No USB?! NOOOO!!&#8221;

Right. The nice, cheap, reliable laser printer had no USB connector, rendering the print server features of the Airport Express completely useless. 

Since I really didn&#8217;t want to connect the printer to my [slightly unstable and very unloved] Windows PC, after much anguish I went to Microcenter and got the [D-Link Ethernet Print Server][4], for $60. 

Excellent! When I got home, I eagerly ripped open the packaging, configured the D-Link through its little web interface, plugged it into the home LAN, and tried plugging it into the HP 1100. 

Except the printer had a port that looked like [this][5], and the D-Link had a connector that looked like [this][6]. 

ARG!

And back to Microcenter, to pick up a [Mini-Centronics to Centronics adapter][7], for $9. 

After all of that, setting up the printer was easy. The D-Link made it especially easy, as it advertises its services via Rendezvous. One trick for OSX: the [Gimp-Print][8] DeskJet 230 drivers work in place of the HP 1100 drivers. HP also seems to make some OSX drivers, but good luck finding them.

So, the total cost for my nice, cheap, reliable printer was: $130 Airport Extreme, $85 printer, $20 shipping, $60 D-Link, $9 adapter = $304. Which is about what I&#8217;d pay for a new, low/mid-range USB laser printer.

 [1]: http://www.radioshack.com/
 [2]: http://www.apple.com/airportexpress/
 [3]: http://h10010.www1.hp.com/wwpc/us/en/sm/WF10a/18972-236251-236263-14638-236263-25470.html
 [4]: http://dlink.com/products/?pid=322
 [5]: http://www.tripplite.com/img/Connector_LineArt/MiniCentronics36_Male.gif
 [6]: http://www.ntanet.net/images/centronics.jpg
 [7]: http://www.lindy.com/de/productfolder/07/70255/70255_1_big.jpg
 [8]: http://gimp-print.sourceforge.net/MacOSX.php3