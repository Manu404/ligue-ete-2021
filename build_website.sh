#!/bin/bash

rm -rf deploy
mkdir -p deploy

cp readme.html deploy/index.html
sed -i '/<\/style><title>readme<\/title>/c\<\/style><title>Ligue EDH<\/title>' deploy/index.html
cp -r resources deploy/

cp update.html deploy/changelog.html
sed -i '/<\/style><title>update<\/title>/c\<\/style><title>Ligue EDH - Changelog<\/title>' deploy/changelog.html

cp score_blank.pdf deploy/score.pdf
