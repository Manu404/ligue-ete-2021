#!/bin/bash

# build resource folder
rm -rf resources
mkdir -p resources/babioles
cp readme.content/resources/*.png ./resources
cp readme.content/resources/babioles/*.png ./resources/babioles

# build readme
cat /dev/null > readme.md
echo "" >> readme.md && cat readme.content/header.md >> readme.md
echo "" >> readme.md && cat readme.content/toc.md >> readme.md
echo "" >> readme.md && cat readme.content/doodle.md >> readme.md
echo "" >> readme.md && cat readme.content/organisation.md >> readme.md
echo "" >> readme.md && cat readme.content/reglement.md >> readme.md
echo "" >> readme.md && cat readme.content/points.md >> readme.md