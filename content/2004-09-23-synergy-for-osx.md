---
title: Synergy for OSX
author: Unxmaal
type: post
date: 2004-09-23T00:00:00+00:00
url: /archives/993
categories:
  - Apple

---
[Synergy][1] truly rocks. 

For a while now I&#8217;ve been using [osx2x][2] along with [UltraVNC][3], just so that I could use one keyboard and dual monitors on two computers &#8212; a Mac and a PC. 

osx2x&#8217;s problems were many: the PC would detect a / as a ?, and vice versa; the number pad wouldn&#8217;t work, and sometimes the shift key would get stuck. Worse, it was impossible to play games on the PC and span over to the Mac&#8217;s monitor &#8212; osx2x would either completely garble the mouse commands, or would just crash. I had to put a KVM in place just so that I could switch the hardware keyboard to the PC when I wanted to game. 

Development for osx2x seems to have stopped; it&#8217;s been stuck at 2.20 for almost a year, with no news listed on the page. The app, though small, is really annoying. In order to work, it must be in the foreground, and will also display a huge arrow pointing to the remote display. It consumes space on the Dock, and even at its smallest size, the app window is larger than a minimized iTunes window. 

Synergy is a real pain to install, particularly on OSX. I&#8217;ve not yet seen a good way to get it to start on login, but I&#8217;ve not looked very hard. The key to setting up Synergy is that it is totally backwards from a VNC setup: the machine the hardware [keyboard, monitor] is plugged into is the _server_, and the machine that you&#8217;re controlling is the _client_. 

Configuring a WinXP Synergy client is dead-easy. On a Mac, you&#8217;ll still have to edit text files, but I did find a GUI front-end, [SynergyOSX][4], but I haven&#8217;t tried it. Here&#8217;s a hint: your system names will be the WinXP NetBIOS name, like &#8220;Home&#8221;, and the Mac&#8217;s Rendezvous name, like &#8220;Bob.local&#8221;. Be sure to test your connections, and you&#8217;ll see what the problem is if you run into any.

So far, Synergy is pretty nice. Once you start the server [from Terminal], it disappears and does its job. On the WinXP client machine, it leaves a little systray icon. And yes, the / key is indeed the / key, not the \ key.

Games still don&#8217;t play well across the Synergy connection, but that&#8217;s to be expected.

 [1]: http://synergy2.sourceforge.net/ "Synergy"
 [2]: http://www.opendarwin.org/projects/osx2x/
 [3]: http://ultravnc.sourceforge.net/
 [4]: http://www.altuit.com/webs/altuit2/SynergyOSX/default.htm