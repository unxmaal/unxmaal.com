---
title: StarProse Sucks
author: Unxmaal
type: post
date: 2004-02-18T00:00:00+00:00
url: /archives/945
categories:
  - Tech

---
Hmm, looks like the same pro-Kerry morons have changed IPs. Seems they&#8217;re attacking the old Refer script, at /refer/index.php, using some scumware app by a little fly-by-night company called [StarProse][1]. 

[I&#8217;m pretty sure that one day when the two 18-year-old crank addicts that comprise StarProse were sitting in their momma&#8217;s basement, one of them decided that using that there Interwebnet thing was a great way to make some drug money, and was probably more fun than torturing cats or molesting children. Maybe. And they didn&#8217;t even have to steal from Mom again! ]

Luckily, I&#8217;ve created a happy deterrent for anyone trying to spam for johnkerry:

<tt><br /> < ? php if ( eregi (" StarProse|kerry", $_SERVER['HTTP_REFERER' ]) ) { header ("Location: http ://tubgirl.com "); } ?php></tt>

You&#8217;ll have to take some of the spaces out to get that to work. Also, be sure never to ever go to tubgirl.com. Ever.

Another nice thing that works is a .htaccess file:

For your .htaccess file in the Refer directory:  
<Limit GET HEAD POST>  
order allow,deny  
deny from 172.144  
allow from all  
</LIMIT>

You don&#8217;t want this in your webroot, unless you want to block all AOL users.

 [1]: http://www.starprose.com/