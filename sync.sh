#!/usr/bin/env bash

# 参考:
#  1  https://www.ruanyifeng.com/blog/2020/08/rsync.html
#  2  https://www.jianshu.com/p/bd3ae9d8069c

rsync -av -delete --exclude='.gitkeep' -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.165:/home/yingzhuo/upload/
rsync -av -delete --exclude='.gitkeep' -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.166:/home/yingzhuo/upload/
rsync -av -delete --exclude='.gitkeep' -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.167:/home/yingzhuo/upload/
