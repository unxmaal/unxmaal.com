---
title: Updating G4 Firmware
author: Unxmaal
type: post
date: 2002-06-09T00:00:00+00:00
url: /archives/715
categories:
  - General

---
Over the weekend, I learned how to update the firmware on my G4 server. The poor thing was running Firmware version 4.1.old, and didn&#8217;t know about booting straight into OS X via holding the &#8216;x&#8217; key at boot, network boot, or Firewire Target Mode. 

Since the only Mac I&#8217;ve ever owned came with OSX, I&#8217;ve had no real use for Classic in any real sense, so I chose not to install it on this system. Once I downloaded the firmware updater, I found it would only run from OS 9.x (Classic). I&#8217;d never done a Classic installation before, but it wasn&#8217;t very difficult, with the exception of a few snags.

For some reason, the G4 wouldn&#8217;t boot off the Classic CD, even when I held down the &#8216;c&#8217; key on boot. I had to select the Classic CD via the OSX &#8220;Startup Disk&#8221; control panel. Once I booted into Classic, it wouldn&#8217;t see the hard drives. I don&#8217;t know if this was because the drives were SCSI or because they had OSX installed on them. I simply installed Classic onto my 20GB portable Firewire drive. 

After the installation completed, I booted off the Firewire drive and ran the firmware updater. However, after the machine rebooted, Classic still couldn&#8217;t see the SCSI hard drives, and still refused to boot straight into X via the keyboard boot-sequence. 

At this point, I just unplugged the Firewire drive. &#8220;Try to boot off an unplugged drive, bastard!&#8221; 

The G4 sat with a question-marky folder on the screen for about five minutes until realized there was an OSX partition.

I still don&#8217;t know why it won&#8217;t recognize the X key boot sequence, but I haven&#8217;t really it after the firmware upgrade, and I&#8217;m still not sure if I&#8217;m performing the keystroke properly.