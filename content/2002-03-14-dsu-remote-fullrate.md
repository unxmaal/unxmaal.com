---
title: dsu remote fullrate
author: Unxmaal
type: post
date: 2002-03-14T00:00:00+00:00
url: /archives/639
categories:
  - General

---
Hey kids! On most [Cisco][1] routers, &#8220;dsu remote accept&#8221; is enabled by default! This means that if you&#8217;re paying for a fractional DS3 from your upstream service provider, and you have the right type of router on your side, you can issue the command &#8220;dsu remote fullrate&#8221; to crank that fractional DS3 up to a full 45MB! Even better, your upstream provider will likely not notice, giving you hundreds of thousands of dollars of bandwidth for free! What&#8217;s more, if your provider notices, Cisco will consistently tell them that &#8220;that command is probably not enabled by default,&#8221; but Cisco isn&#8217;t sure, because they&#8217;ve &#8220;never tested it in a lab!&#8221;

Oh, and if you&#8217;re an upstream provider, this means you&#8217;re going to have to add the line &#8220;no dsu remote accept&#8221; to all of your fractional DS3 configs! Let&#8217;s all do the [Happy We Love Cisco Dance][2]! YAY!

 [1]: http://www.cisco.com
 [2]: http://juniper.net