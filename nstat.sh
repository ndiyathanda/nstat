while :
do
clear
echo "System kernel:";uname -srm 
echo -e "Uptime:";uptime
echo -e CPU info:
sudo dmidecode -t 4 | egrep -i 'core (count|enabled)|thread count|Version'
echo -e CPU usage;grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
echo -e GPU info [only nvidia cards works!];
nvidia-smi -L
echo -e GPU Usage:
nvidia-smi --format=csv --query-gpu=power.draw,utilization.gpu,fan.speed,temperature.gpu
echo -e Memory usage; free -t | awk 'NR == 2 {print $3/$2*100"%"}'
echo -e Average ping
ping -c 4 google.com | tail -1| awk '{print $4}' | cut -d '/' -f 2
sleep 1
done
