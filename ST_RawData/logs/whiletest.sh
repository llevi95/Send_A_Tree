start=1
end=200
while [ $start != $end ]
do
filename=day_$start
wget 46.101.230.157/jds_march_2022/$filename
start=$((start + 1))
done