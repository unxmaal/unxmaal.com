---
title: 'Referrer [or Referer] Spam'
author: Unxmaal
type: post
date: 2002-12-01T00:00:00+00:00
url: /archives/801
categories:
  - General

---
Because certain cock-holsters on the Internet seem to think that my [Referrer Logs][1] are a great place to place fake referrals to porn sites, I&#8217;ve had to research ways to stomp on their itty spammer pee-pees.

Once you&#8217;ve found the Referrer-Spammer&#8217;s IP address [check your http access logs], it is trivial to add a deny statement to your [.htaccess][2] file:

<tt></p> 

<p>
  ErrorDocument 404 "Does not exist."
</p>

<p>
  deny from ---.---.---.---
</p>

<p>
  </tt> If you only specify a portion of numbers, you will block a whole range.
</p>

<p>
  The scumbags, by the way, were:<br />adsl-65-42-90-237.dsl.chcgil.ameritech.net [65.42.90.237], and 12-247-30-8.client.attbi.com [12.247.30.8] .
</p>

 [1]: http://unxmaal.com/reports/log.refs.html
 [2]: http://www.freewebmasterhelp.com/tutorials/htaccess/2