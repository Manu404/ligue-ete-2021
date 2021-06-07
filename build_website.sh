#!/bin/bash

rm -rf deploy
mkdir -p deploy
cp readme.html deploy/index.html
cp -r resources deploy/
cp score_blank.pdf deploy/score.pdf