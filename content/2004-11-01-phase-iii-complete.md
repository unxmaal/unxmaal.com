---
title: Phase III Complete!
author: Unxmaal
type: post
date: 2004-11-01T00:00:00+00:00
url: /archives/1003
categories:
  - Site News

---
As [Kayvan][1] suggested, on [Susi&#8217;s][2] blog, &#8220;You could implement MT-Blacklist.&#8221;

MT-Blacklist did nothing to help me, during the comment-spam attack. The botnet connections occurred regardless of blacklisting. Server load was up to 110 &#8212; where 0.2 is normal &#8212; before DP stopped the Apache process. I removed my mt-comments.cgi script entirely, but the requests still came in from over 100 infected clients across the Internets. 

I&#8217;ve disliked MT since the whole blogspam thing started, and I&#8217;ve hated it since 6Apart decided to screw everyone on licensing fees. It would not suprise me to see that they had a helping hand in some blogspamming, just to push people to pay the upgrade fee.

It took about 2 hours to install [WordPress][3]. I exported my MT posts and comments, and split the file into thirds (anything over 1MB is bad for importing). I downloaded and unpacked WordPress, made a few config changes, and then imported all of my old posts. The import took less time than the export.

The biggest bastard was fixing my MT index template to work with WordPress. It wasn&#8217;t terribly complicated, but it did require matching up each systems tags.

Now that it&#8217;s done, I can say that WordPress truly PWNZ MoveableType. It has some killer features, like built-in link-management [all my sidebar links], OPML importing, and future-dated posting [the post won&#8217;t show up until after the future date]. And it is stupidly fast &#8212; no more waiting for my site to &#8216;rebuild&#8217;. 

More on the link-management and OPML import features: a while back I played around with [Bloglines][4], adding RSS feeds of all of my linked sites to my Bloglines account. WordPress will import all of your links from your Bloglines [RSS page][5], and add them into its Link Manager. From the Link Manager, you can create categories for links, and then specify which category a given link is in [along with things like rating, description, and so on]. Once you get your links set up, it is very easy to incorporate separate category-based divs into your main site template &#8212; and WordPress will auto-sort them for you. 

So yeah, screw MoveableType. All the cool kids use WordPress now.

 [1]: http://sarikhani.net
 [2]: http://www.sushithegreat.com/mt-archives/000443.html
 [3]: http://wordpress.org/
 [4]: http://bloglines.com
 [5]: http://www.bloglines.com/public/Unxmaal