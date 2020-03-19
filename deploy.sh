#!/usr/bin/env sh

set -e

cd client
npm run build

cd ../docs

git init
git add -A
git commit -m "deploy"

git push -f git@github.com:xiaobaibaibaibai/3pigs.git master:gh-pages

cd -
