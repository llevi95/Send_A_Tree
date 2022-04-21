start=1
end=196

while [ $start != $end ]
do

filename=day_$start

#cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'registration' > /home/levi/SendATree/ST_RawData/free_tree/$filename
cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'free_tree' > /home/levi/SendATree/ST_RawData/free_tree/$filename
#cat /home/levi/SendATree/ST_RawData/logs/$filename | grep 'super_tree' > /home/levi/SendATree/ST_RawData/free_tree/$filename

start=$((start + 1))

done