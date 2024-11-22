---
title: Fixing MoveableType
author: Unxmaal
type: post
date: 2003-05-21T00:00:00+00:00
url: /archives/865
categories:
  - Tech

---
Sometime Sunday, [Laura][1]&#8216;s MoveableType barfed. Any MT action, such as posting or editing posts, yielded the following error message:

<tt>Statement has no result columns to bind (perhaps you need to successfully call execute first) at /usr/hosted/abracapocus.org/cgi-bin/mt/lib/MT/ObjectDriver/DBI/mysql.pm line 224. </tt>

After some investigation, it appeared that the problem was with the actual MySQL database, rather than the MT backend. 

The [solution][2] was to use the myisamchk utility, from the command line, to repair the tables: 

cd to the directory where the database lives.  
myisamchk -q -r *.MYI

This repaired the corrupted database. However, it also seems to have deleted all of the comments on the site. This is why you should always make a good backup.

 [1]: http://unxmaal.com/cgi-bin/clickcount.cgi?action=jump&URL=http://abracapocus.org/
 [2]: http://www.mysql.com/doc/en/Repair.html