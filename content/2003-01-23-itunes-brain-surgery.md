---
title: iTunes Brain Surgery
author: Unxmaal
type: post
date: 2003-01-23T00:00:00+00:00
url: /archives/827
categories:
  - General

---
Problem: 

You have over 15,000 mp3s that exist on a remote server, and you want to relocate them to your local machine while keeping your iTunes Library information (mostly) intact.

Solution: 

After moving the files to your local machine, iTunes will stubbornly look for them on the remote host. If said host no longer has those files, iTunes will ask to locate each individual file (which is bad.) 

Export your iTunes Library from the File..Export menu. I recommend doing this twice, just in case. 

Close iTunes, then remove your /Users/username/Music/iTunes 3 Music Library and iTunes Music Library.xml files. [I recommend backing them up, possibly by adding them to a .sit and trashing the originals.]

Bring up the Terminal, and open the exported Library.xml file in vi [or your editor of choice.]

In the Library.xml file, look for a section named &#8220;<string>file://localhost/path/to/mp3.mp3</string> . If your files are located on a remote host, the pathname may look like &#8220;file://localhost/Volumes/mp3/&#8230;.&#8221;

Perform a &#8220;find and replace&#8221; in your text editor, changing each instance of &#8220;Volumes/mp3&#8221; to the new path, &#8220;Volumes/newdrive&#8221;. In vi, the command would be 

:%s/Volumes\/mp3/Volumes\/newdrive/g

:\[command]%[the whole file]s[search and replace\]\[for this\][with this]g[every instance on each line].

Note that you have to escape [\] the forward slashes, in vi.

After saving your changes, when you open iTunes you will see that it has been restored to its initial state. From the File menu, select &#8220;Import&#8221;, and choose your &#8220;fixed&#8221; Library.xml file. 

Go watch a movie for the next hour.

This is a two-step process: iTunes will import the files based on the Library.xml information, and it will re-analyze each file &#8220;to determine song volume&#8221;. If some songs can&#8217;t be found, iTunes will warn you first, then continue on to do the volume analysis.

When this process finally completes, you will be left with a (hopefully) functional iTunes library, complete with star ratings. You should note that &#8220;play count&#8221; and &#8220;play-date&#8221; type information will not survive the import.