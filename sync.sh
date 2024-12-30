#!/usr/bin/env bash

rsync -av -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.165:/home/yingzhuo/upload/
rsync -av -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.166:/home/yingzhuo/upload/
rsync -av -e 'ssh -p 22' /Users/yingzhuo/Dev/UTMs-Manager/SYNC_FOLDER/ yingzhuo@192.168.31.167:/home/yingzhuo/upload/