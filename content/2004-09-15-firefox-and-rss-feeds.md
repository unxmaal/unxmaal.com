---
title: Firefox and RSS Feeds
author: Unxmaal
type: post
date: 2004-09-15T00:00:00+00:00
url: /archives/992
categories:
  - Tech

---
I&#8217;m really impressed with the latest version of [Firefox][1]. 

One of the neater additions is [Live Bookmarks][2]. 

Live Bookmarks let you bookmark an RSS feed, which will appear as a bookmark folder that contains all of the headlines in the feed. 

On certain sites, you&#8217;ll see an orange RSS icon in the bottom right corner of the Firefox browser window. If you click it, it&#8217;ll give you an option to subscribe to the site&#8217;s feed. 

I poked around for a few minutes and found out how to make my site RSS-enabled, at least as far as Firefox was concerned:

If your site content management tool already handles RSS feed generation, you can add the following line in the < head>section of your main index:

< link rel="alternate" type="application/rss+xml" title="RSS" href="http://unxmaal.com/mt/index.rdf" / > 

Obviously, replace the link to my RSS feed with the link to your own.

 [1]: http://mozilla.org
 [2]: http://www.mozilla.org/products/firefox/live-bookmarks.html