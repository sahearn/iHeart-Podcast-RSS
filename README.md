# iHeart Podcast RSS
iheart.com doesn't appear to provide RSS feeds for podcasts; this snippet will help you scrape a podcast page

## Background
A snippet of regex to pull content from a podcast page, intended for output to RSS.  I use this in a Perl script that's run via daily cron to generate a feed that I then host.  Add it to feedly, newsblur, etc.  Profit.

I originally tried this using proper HTML::Tree Perl modules, but the iheart source is very messy and unpredictable.  Probably to prevent people from scraping at all.  Regex to the rescue.

Suggestions welcome.
