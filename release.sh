#!/usr/bin/env bash

PREFIX=$(cd "$(dirname "$0")"; pwd)
cd $PREFIX

git add -u && git commit -m '.' ;


release=$PREFIX/../release/`basename $PREFIX`

cd $release
git rm * -rf
rm -rf *

cd $PREFIX
git archive master | tar -x -C $release

cd $release


mv release/SUMMARY.md ./-/md/\!/SUMMARY.md
mv release/about.md ./-/md/\!/about.md
rm -rf .gitignore release.sh id_rsa.enc ./-/md/help release ./-/md/$ .travis.yml
> ./-/init.toml
> ./-/md/SUMMARY.md

git add .
cp $PREFIX/.gitignore $release
git add .gitignore
git commit -m 'release'
git push
git push github




