#!/bin/bash

# abort on errors
set -e
# build
hugo

# navigate into the build output directory
cd public

echo 'profepato.vasak.net.ar' >CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:JoaquinDecima/coderhouse-web.git master:gh-pages
cd -
