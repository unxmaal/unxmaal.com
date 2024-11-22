---
title: MT Comment Spam
author: Unxmaal
type: post
date: 2003-10-18T00:00:00+00:00
url: /archives/911
categories:
  - Tech

---
In reference to the [MT Blacklist][1] thread over at [NSLog][2]: 

It seems to me that the better way of blocking comment spam would be to use a modified version of Realtime Blackhole Lists. 

The downside of RBLs for email have been the fact that if you use them, you must rely solely upon the judgement of their maintainers. There is an implicit trust in the maintainers of the RBL, that they won&#8217;t block the entire continent of Asia just because of a few Tawainese spammers. Unfortunately, many RBL maintainers have, in the past, blocked whole major networks, just to &#8220;get attention&#8221;. This had the effect of wiping out email for enormous chunks of the Internet. Since most webloggers want to encourage commenting, this is not the result we want.

With a RBL-type blocker, bloggers can &#8220;pool their resources&#8221; of spammy IP addresses and ranges, each gaining protection from ranges that haven&#8217;t spammed them yet.

Since the biggest problem with using RBLs is the creeping fear of &#8220;I&#8217;m trusting my system to vigilante wackos,&#8221; I think that a distributed, trust-based system would work better. 

For example:

Two MTlogs, Kottnut and BoingFilter, have their blocklists publicly available. As I trust both their maintainers to be mostly sane, I tell my MT to auto-update its blocklist from those two sources.

I can also have MT update its blocklist from [Networkgeek][3], but since I know that the maintainer&#8217;s a lunatic who has a fetishistic dislike for the number 216, I can manually comment out the global block for 216.0.0.0/8.

Even better, since my MT would consolidate the blocklist of all three of my source sites, removing duplicate entries and so on, someone who trusted me to not be a crazy person [shh] could have their MT auto-update from my blocklist. And so on across the Internet, until we have a very stable, self-healing &#8220;web of trust&#8221;.

Granted, this whole concept is very much a [Lazyweb][4] idea, and a band-aid patch for MoveableType&#8217;s fairly insecure comment scheme, at that. I think it&#8217;d be a great addition to an otherwise very nice journaling suite.

 [1]: http://nslog.com/archives/2003/10/17/mtblacklist.php
 [2]: http://unxmaal.com/cgi-bin/clickcount.cgi?action=jump&URL=http://nslog.com/
 [3]: http://unxmaal.com/cgi-bin/clickcount.cgi?action=jump&URL=http://networkgeek.org
 [4]: http://www.lazyweb.org/