---
title: Searching the Spotlight Database From The Command-Line
author: Unxmaal
type: post
date: 2005-05-03T00:00:00+00:00
url: /archives/1703
categories:
  - General

---
I&#8217;ve got a lot of MP3s, and I&#8217;m slightly obsessed with managing them. The problem is, I don&#8217;t know which ones are listed in my iTunes Library, and which ones aren&#8217;t. 

Here&#8217;s how I used Spotlight to locate all the missing, &#8220;un-databased&#8221; MP3s.

First off, currently it&#8217;s not easy to create a Smart Folder that will match on a Boolean NOT. It&#8217;s possible, but not easy. The way to do it is to enclose the NOT term in parentheses, with a hyphen. For example, &#8220;bugs(-aphids)&#8221; would show all instances of &#8220;bugs&#8221;, and not &#8220;aphids&#8221;. As far as I know, there&#8217;s no good way to search for an empty set, or &#8220;&#8221;. 

Since I wanted to find files NOT in my iTunes Library, I decided to attempt to tag all of the files that did exist in my library with a unique ID &#8212; for example, &#8220;OCD&#8221;. I selected all of the MP3s in my library, hit cmd-i, and added &#8220;OCD&#8221; to the comments field. Depending on the size of your library, this&#8217;ll take a while to process.

Once that was done, I had to drop to a Terminal shell, and use the built-in &#8220;mdls&#8221; and &#8220;mdfind&#8221; tools. 

The overall idea is to use mdls to determine the names of the metadata fields you&#8217;re looking for, and then to use mdfind to actually find the files that match (or don&#8217;t match). 

An example of mdls:  
<tt><br /> [server% mdls 02.\ VNV\ Nation\ -\ Standing\ \(Motion\).mp3<br /> 02. VNV Nation - Standing (Motion).mp3 -------------<br /> kMDItemAlbum = "Standing (EP)"<br /> kMDItemAttributeChangeDate = 2005-05-03 21:17:11 -0400<br /> kMDItemAudioBitRate = 192<br /> kMDItemAudioChannelCount = 2<br /> kMDItemAudioSampleRate = 44100<br /> kMDItemAuthors = ("VNV Nation")<br /> kMDItemComment = "OCD"<br /> kMDItemComposer = ""<br /> kMDItemContentCreationDate = 2002-10-12 11:15:14 -0400<br /> kMDItemContentModificationDate = 2005-05-03 21:17:11 -0400<br /> kMDItemContentType = "public.mp3"<br /> kMDItemContentTypeTree = (<br /> "public.mp3",<br /> "public.audio",<br /> "public.audiovisual-content",<br /> "public.data",<br /> "public.item",<br /> "public.content"<br /> )<br /> kMDItemDisplayName = "02. VNV Nation - Standing (Motion).mp3"<br /> kMDItemDurationSeconds = 1468<br /> kMDItemFSContentChangeDate = 2005-05-03 21:17:11 -0400<br /> kMDItemFSCreationDate = 2002-10-12 11:15:14 -0400<br /> kMDItemFSCreatorCode = 0<br /> kMDItemFSFinderFlags = 0<br /> kMDItemFSInvisible = 0<br /> kMDItemFSLabel = 0<br /> kMDItemFSName = "02. VNV Nation - Standing (Motion).mp3"<br /> kMDItemFSNodeCount = 0<br /> kMDItemFSOwnerGroupID = 20<br /> kMDItemFSOwnerUserID = 501<br /> kMDItemFSSize = 11752996<br /> kMDItemFSTypeCode = 0<br /> kMDItemID = 7695<br /> kMDItemKind = "MP3 Audio File"<br /> kMDItemLastUsedDate = 2003-04-29 16:46:21 -0400<br /> kMDItemMediaTypes = (Sound)<br /> kMDItemMusicalGenre = "Industrial"<br /> kMDItemTitle = "02. VNV Nation - Standing (Motion)"<br /> kMDItemTotalBitRate = 192<br /> kMDItemUsedDates = (2003-04-29 16:46:21 -0400)<br /> </tt>

From this info I could tell that the &#8220;kMDItemComment&#8221; field is the one I needed. 

The easiest way to do this is to hit cmd-F in the Finder, change &#8216;Kind&#8217; to &#8216;Raw Query&#8217;, then enter: <tt>kMDItemComment != ???????*OCD*???????? && kMDItemContentType = 'public.mp3'</tt>

This will display all the MP3s without &#8220;OCD&#8221; in the Comments field. 

I saved this as a Smart Folder, which maked it much easier to drag-and-drop them into iTunes.

The CLI-way to do this is harder:

I ran mdfind to locate all files whose &#8220;kMDItemComment&#8221; field was NOT &#8220;OCD&#8221;, and only the files that were MP3s. I also sent this output to a text file for safekeeping. (For some reason, sometimes changing the Comment field appends the new comment, and doesn&#8217;t overwrite the old one. That&#8217;s why I had to use a wildcard on both sides of OCD.)

<tt>mdfind "kMDItemComment != '*OCD*'" | grep mp3 > missing.txt</tt>