#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git config user.name 'Itherma'
git config user.email '1227971544@qq.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:Itherma/vue-next-render.git master:gh-pages

cd -