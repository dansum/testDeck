---
title       : View-Count Reporter for YouTube IDs
subtitle    : Project for Data Products MOOC, June 2014
author      : Dan C
job         : Student of R
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []        # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Ever wanted to create a video library on Youtube?
* After you record a video, you want to see how many people view it
* Before you record your next video, you want to know what types of videos are most actually watched!
* You don't want to keep going to Youtube to see the data manually

--- .class #id 

## You can get the YouTube data automatically and analyze it as you wish
* Our video library: Khan Academy videos dubbed in Bulgarian
* Some data about our videos is maintained on Google Docs -- and is downloaded here
  - For your reference, this is the count of dubbed videos:

```
## [1] 134
```
  - And this is the total count of views for those same videos (downloaded via Youtube API):

```
## [1] 26885
```
* Curious about our videos? Watch in Bulgarian here:  http://bg.khanacademy.org

---

## How to use the app
* Provide inputs:
  - which video to analyze
  - what to count (the "measure")
  - and what that count you think should be (the "benchmark")
* See the results on the right-hand side of the app
  - all counts should be positive
* The view counts for our videos are on the next page ...


---

<iframe src='
assets/fig/nvd3plot2.html
' scrolling='no' seamless class='rChart 
polycharts
 '
id=iframe-
chart2404356870c0
></iframe>
<style>iframe.rChart{ width: 100%; height: 400px;}</style>
