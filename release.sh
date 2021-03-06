#!/usr/bin/env bash

PREFIX=$(cd "$(dirname "$0")"; pwd)
cd $PREFIX

git add -u ;
git commit -m '.' ;


release=$PREFIX/../release/`basename $PREFIX`

cd $release
#git rm * -rf
rm -rf *

cd $PREFIX
git archive master | tar -x -C $release

cd $release


mv release/SUMMARY.md ./md/\!/SUMMARY.md
mv release/about.md ./md/\!/about.md
mv release/robots.txt ./
rm -rf .gitignore release.sh id_rsa.enc \
    ./-/md/\!/readme.md ./md/\!/readme.md \
    ./-/md/help ./md/help ./-/help \
    ./-/\!case.md ./md/\!/case.md \
    ./-/dev ./md/dev ./-/rss.xml \
    release .travis.yml ./-/S  \
    ./-/$/*.md sogousiteverification.txt \
    ./-/sitemap.*
> ./-/init.toml
> ./md/SUMMARY.md
mkdir -p ./-/$
touch ./-/$/SUMMARY.md

git add .
cp $PREFIX/.gitignore $release
git add .gitignore
git commit -m 'release'
git push
# git push github




