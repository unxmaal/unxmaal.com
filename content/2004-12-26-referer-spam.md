---
title: Referer Spam
author: Unxmaal
type: post
date: 2004-12-26T00:00:00+00:00
url: /archives/1657
categories:
  - Site News

---
So far I&#8217;ve nuked comment-spam, by using embedded graphic security codes in my comments. It sucks to have to do this, but we all know that _this is war_. 

Next up is referer-spam, which is at an all-time high. It seems that the developers of my stats analyzer, [Awstats][1], either don&#8217;t care or don&#8217;t know how to set up an easy method for referer blacklisting. If anyone knows of a good way to do this with Awstats, or a better stats analyzer, let me know.

Meanwhile, I&#8217;ve had some luck with modifying my .htaccess file. Here&#8217;s a sample:

    
    < limit GET HEAD POST>
    SetEnvIfNoCase Referer ".*(porn).*" BadReferrer
    SetEnvIfNoCase Referer ".*(casino).*" BadReferrer
    SetEnvIfNoCase Referer ".*(sex).*" BadReferrer
    #
    order deny,allow
    deny from env=BadReferrer
    < /limit> 

This method sucks, because it is manual and purely reactive, but it does help. I&#8217;ve also password-protected my stats page, making it completely un-crawlable by any web spider. If you&#8217;re having problems with referer spam, I recommend you make the same change. If you really want people to be able to see your stats, you can post the username/password as an image.

 [1]: http://awstats.sourceforge.net/