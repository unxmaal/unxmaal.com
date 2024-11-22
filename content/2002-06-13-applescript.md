---
title: Applescript
author: Unxmaal
type: post
date: 2002-06-13T00:00:00+00:00
url: /archives/717
categories:
  - General

---
I&#8217;ve recently discovered the Joy of Applescript. 

Applescript can be used to very easily mount SMB shares. Open /Applications/Applescript/Script Editor, and paste in the following script (change the variables to match your setup):

<tt></p> 

<p>
  tell application "Finder"
</p>

<p>
  open location "smb://user:password@computername/sharename"
</p>

<p>
  end tell
</p>

<p>
  </tt>
</p>

<p>
  Save the script as an application, and be sure to check &#8220;Do not show startup screen.&#8221; This will yield a clickable item that will behave like any other app, and can be used to quickly connect to an SMB share.
</p>