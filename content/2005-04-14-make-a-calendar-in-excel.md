---
title: Make a calendar in Excel
author: Unxmaal
type: post
date: 2005-04-14T00:00:00+00:00
url: /archives/1692
categories:
  - General

---
Here&#8217;s a nifty formula that&#8217;ll create a [calendar in Excel][1]:

Make a calendar in Excel:

=IF(MONTH(DATE(YEAR(NOW()),MONTH(NOW()),1))  
<>MONTH(DATE(YEAR(NOW()),MONTH(NOW()),1)-  
(WEEKDAY(DATE(YEAR(NOW()),MONTH(NOW()),1))-1)  
{0;1;2;3;4;5}*7 {1,2,3,4,5,6,7}-1),&#8221;&#8221;,DATE(YEAR(NOW()),  
MONTH(NOW()),1)-(WEEKDAY(DATE(YEAR(NOW()),  
MONTH(NOW()),1))-1) {0;1;2;3;4;5}*7 {1,2,3,4,5,6,7}-1)

To use it:

1. Copy the formula text to the clipboard  
2. Activate an Excel sheet and select a 7-col by 6-row range  
3. Press F2  
4. Press Ctrl V to paste the formula into the active cell  
5. Press Ctrl Shift Enter (to make it a multicell array formula)  
6. Format the cells using the &#8220;Date&#8221; number format.

 [1]: http://www.slackermanager.com/slacker_manager/2005/04/make_a_calendar.html