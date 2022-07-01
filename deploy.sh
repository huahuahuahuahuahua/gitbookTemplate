#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
gitbook build

# 进入生成的文件夹（ 进入VuePress打包后的文件夹根目录 ）
cd _book

# 如果是发布到自定义域名
# echo 'www.baidu.com(自定义域名)' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@github.com:huahuahuahuahuahua/gitbookTemplate.git master:gh-pages
cd -