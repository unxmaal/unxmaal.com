---
title: IBM – Installing Red Hat Enterprise Linux Version 4 Update 3 – IBM System x3550
author: Unxmaal
type: post
date: 2007-03-21T00:00:00+00:00
url: /archives/1815
categories:
  - General

---
Supposedly, [this page][1] will tell me how to make Red Hat work with the Adaptec SATA RAID controller on my new IBM x3550. We&#8217;ll see.

Update: well, no, not _really_. From what I found, the only way to get RHEL4 to see that controller was to download the _single_ disk image, of about 30, that worked with both that particular controller and that particular version and release of RHEL.

Also, a hearty &#8220;screw you&#8221; to IBM for lumping all their drivers on a single page. Also also, an even heartier &#8220;screw you&#8221; to IBM for requiring floppy images for servers that don&#8217;t even ship with floppy drives.

 [1]: http://www-1.ibm.com/support/docview.wss?uid=psg1MIGR-64455