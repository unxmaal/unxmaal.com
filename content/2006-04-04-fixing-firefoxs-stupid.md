---
title: Fixing FireFox’s Stupid.
author: Unxmaal
type: post
date: 2006-04-04T00:00:00+00:00
url: /archives/1769
categories:
  - Tech

---
Ever tried to send a file attachment via Gmail using FireFox, and gotten the really annoying &#8220;unresponsive script&#8221; popup every five seconds?

You can fix that by going to &#8216;about:config&#8217; and modifying dom.max\_script\_run_time to something reasonable, like 60000 seconds.