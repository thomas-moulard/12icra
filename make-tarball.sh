#! /bin/sh
git archive master --prefix=RSS2012/ -v | bzip2 > rss2012.tar.bz2
