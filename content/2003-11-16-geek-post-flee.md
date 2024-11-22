---
title: Geek post. Flee.
author: Unxmaal
type: post
date: 2003-11-16T00:00:00+00:00
url: /archives/918
categories:
  - Apple

---
Over the weekend, I upgraded my G4 to Panther. I&#8217;ve been pretty nervous about doing so, because there were a few things wrong with the existing Jaguar install. The G4 acts as my main fileserver, with 160GB of storage in a mirrored RAID, so it&#8217;s pretty important that it didn&#8217;t crash and burn during an upgrade.

I got a 120GB drive from [Tech-EE&#8217;s][1] and crammed it into the G4&#8217;s case. With 3 drives, I&#8217;ve still got room for 3 more, though I&#8217;m not sure the power supply can handle that many, considering the main drive is a Quantum Fireball 18GB SCSI LVD 15,000rpm drive. 

I&#8217;d hoped copying 120GB of files would be as easy as &#8220;copying 120GB of files.&#8221; Wrong. Apparently there&#8217;s no way to tell any OS to &#8220;copy and ignore any errors, dammit!&#8221; I tried using &#8216;cp&#8217; from the terminal, and it decided that since some of the mp3s had odd names that included ampersands or hashes, it&#8217;d fail a few hours into the copy. Great. 

Finally, [Robert][2] suggested using [rsync][3], which happens to be included in a base install of OSX. &#8220;rsync -av /directory /otherdirectory&#8221;, wait several hours, and the copy was done. The &#8220;-av&#8221; flag tells rsync to &#8220;archive, verbosely&#8221;, which means it&#8217;ll only copy files that don&#8217;t already exist in the target location, or are older than the source files. rsync did show errors, especially considering I was copying from HFS to Fat32 (Fat32 doesn&#8217;t support _chown_, hmm, why not?), but any small amount of file loss is acceptable, considering I was only making a backup &#8220;just in case&#8221; something terrible happened during the upgrade. 

Once the backup was done, I pulled the 120GB drive out and put it into my Windows PC, which has been suffering on an old and multi-partitioned 40GB drive for far too long. 

The upgrade to Panther went well, except the User Accounts preference panel was blank. I expected this, because it had been blank since I tried [abortively] to install the Tyrell OpenNMS package. (_Note: don&#8217;t ever do this. This package is pure concentrated ratshit, squozed down into a small OSX installer. Granted, I installed an earlier package, and Tyrell&#8217;s made a newer one, but they still call it an &#8220;alpha.&#8221; I personally think they should&#8217;ve replaced &#8220;alpha&#8221; with &#8220;radioactive anal vomit.&#8221;_) 

After some extensive research, I found the problem. In NetInfo Manager, the user &#8216;opennms&#8217; had a UID of .. nothing. Beautiful. So, I deleted that username, and deleted any other reference to OpenNMS on the filesystem, _and_ deleted /Users/username/Library/Caches/com.apple.preferencepanes.cache, rebooted, and now it works. Hooray. 

Now I&#8217;m off to smack the [Expos??][4] buttons some more.

 [1]: http://tech-ees.com/ "Yes James, it's more expensive than Newegg. Shut up already."
 [2]: http://ipsek.net
 [3]: http://samba.anu.edu.au/rsync/
 [4]: http://www.apple.com/macosx/features/expose/