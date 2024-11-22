---
title: Thoughts on Installing Leopard
author: Unxmaal
type: post
date: 2007-10-29T00:00:00+00:00
url: /archives/1827
categories:
  - General

---
I had two issues while installing Leopard.

The Macbook Pro&#8217;s drive was partitioned as an Apple Partition Map, legacy from the G4 Powerbook. Leopard won&#8217;t install on APM for Intel systems. I cloned the drive to an external firewire drive, then repartitioned with Disk Utility from the Leopard DVD. It installed the OS, then saw the old OS on the still-attached external drive, and copied over all my settings. Nice.

The Mac Mini was just horrible. It&#8217;s an old G4 with no DVD drive, so I had to get an external USB DVD drive. It&#8217;d read the disc, but wouldn&#8217;t boot. Turns out those old systems will only boot from firewire devices. I pulled the DVD drive apart, and the firewire drive, then connected the DVD drive unit to the firewire-to-ATA controller card. The Mini booted off the Leopard DVD, but then Leopard couldn&#8217;t see the Mini&#8217;s internal hard disk. After a reboot, it could see the hard disk, but couldn&#8217;t see the partitions. I exchanged the USB DVD drive for a firewire model, and the Leopard install worked like a champ. 

Mail.app is almost viable as a T-Bird replacement, and its data detection feature is super-nice (mouse over a phone number or address to add that info to the Address Book, or mouse over a date to add an appointment to iCal). 

Finder is much nicer, and I like Coverflow more than I thought I would. 

I really like Quicklook, but the best thing about it so far is Screen Sharing with connected Macs. I usually use my Mini for playing music, since that&#8217;s where my RAID is connected, and my MBP for my main desktop, since it&#8217;s a lot faster. Screen Sharing gives me a really easy way to control the Mini, without having to use a KVM. Screen Sharing&#8217;s screen updates are fast and useable, and the desktop is dynamically resizeable, which is a big plus over VNC. 

Overall, Leopard rocks, and I think Tiger > Leopard is a more significant update than Panther > Tiger.