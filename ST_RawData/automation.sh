#!/usr/bin/env bash

index_last=$(ls -v /home/levi/SendATree/ST_RawData/logs | grep day | tail -1 | cut -d'_' -f2)
index_yesterday=$((index_last + 1))

filename=day_$index_yesterday

wget 46.101.230.157/jds_march_2022/$filename -P /home/levi/SendATree/ST_RawData/logs

cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'registration' > /home/levi/SendATree/ST_RawData/$filename
cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'free_tree' > /home/levi/SendATree/ST_RawData/$filename
cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'super_tree' > /home/levi/SendATree/ST_RawData/$filename