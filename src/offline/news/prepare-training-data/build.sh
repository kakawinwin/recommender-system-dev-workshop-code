#!/usr/bin/env bash
set -e

echo "------------------------------------------------ "
Stage=$1
if [[ -z $Stage ]];then
  Stage='dev-workshop'
fi

echo "Stage=$Stage"

repoName=rs/news-prepare-training-data

if [[ $Stage == 'demo' ]]; then
  ../dev2demo.sh $repoName
else
../spark_build.sh $repoName $Stage
fi

