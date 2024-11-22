---
title: Target Disk Mode
author: Unxmaal
type: post
date: 2018-05-11T00:00:00+00:00
url: /archives/1970
categories:
  - General

---
I found a G4 Mac Mini on Craigslist, intent upon experimenting with MorphOS. It arrived packed well, but the hard drive was dead. I cracked it open, and swapped the drive, but no joy. I tried another drive, and even from the option-boot screen, the Mini didn&#8217;t see the drive.

I booted from several install discs, and none worked. In a fit of masochism, I even booted into Open Firmware, but couldn&#8217;t get that to work either. I plugged a USB IDE drive sled into my Mac Pro, and restored the Tiger DVD to it&#8230;. nope. Mini couldn&#8217;t see it.

Finally, I remembered Target Disk Mode. I dug through boxes, found a FireWire cable, plugged one end into my G4 Cube, and the other into the Mini. Booted the Mini while holding T, and its drives appeared on the Cube&#8217;s desktop. I put the Tiger install DVD in the Cube and ran it &#8212; but installed Tiger on the Mini hard drive. After the install completed, the Mini saw Tiger on it&#8217;s hard drive, and booted happily.

This is the newest of my vintage machines, and has so far taken the longest (or at least the most attempts) to get working.

<img loading="lazy" decoding="async" src="http://unxmaal.com/wp-content/uploads/2018/05/img_7570-2.jpg" class="size-medium wp-image-1976" width="300" height="198" />