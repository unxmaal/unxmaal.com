---
title: No floppy drive on my mac? No problem!
author: site admin
type: post
date: 2004-08-11T00:00:00+00:00
url: /archives/982
categories:
  - Apple

---
Today I was going through old floppy diskettes and found one that had some documents that needed to be archived in a more accessible format than 1.44M floppies. Unfortunately, it was from my PowerMac 7500 days (OS9 at best), and my OSX PowerBook doesn&#8217;t have a floppy. There&#8217;s all sorts of nasty software you can install on a windows box, but I needed a simple, one-off solution to get the files off the disk, without needing to reboot on a live linux CD image or anything wacky like that.

I Googled for a version of the &#8216;dd&#8217; utility that would work under windows and found [this page][1], with a quick 180k download and the exact one-liner I needed to create a disk image.

Incantation:  
dd if=\.\a: of=c:\tmp\disk1.img bs=1440k

Move the disk1.img over to my PowerBook, and it mounted just as if I had inserted the floppy itself. The whole search/image/mount took a couple minutes, tops, so I was pretty proud of myself. =]

 [1]: http://uranus.it.swin.edu.au/~jn/linux/rawwrite/dd.htm