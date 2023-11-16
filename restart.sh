#!/usr/bin/env bash
set -x

#if last shell is running, exit
jobs=`ps aux|grep 'server/api.py'|grep -v "grep"|awk '{print $2}'`
kill $jobs
cd /workspace/weibo_bigdata_push/xuemin/Langchain-Chatchat && sh run_api_new.sh >> ./logs/run_`date +\%Y\%m\%d\%H`.log 2>&1 &
