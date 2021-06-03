#!/bin/bash

rm -rf resources
mkdir -p resources/babioles

cp readme.content/resources/*.png ./resources
cp readme.content/resources/babioles/*.png ./resources/babioles

cat /dev/null > readme.md
cat readme.content/toc.md >> readme.md
cat readme.content/organisation.md >> readme.md
cat readme.content/reglement.md >> readme.md
cat readme.content/points.md >> readme.md