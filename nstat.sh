while :
do
clear
echo "System kernel:";uname -srm 
echo
echo "Uptime:";uptime
echo
echo CPU info:
sudo dmidecode -t 4 | egrep -i 'core (count|enabled)|thread count|Version'
echo CPU usage;grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
echo
echo GPU info [only nvidia cards works!];
nvidia-smi -L
echo GPU Usage:
nvidia-smi --format=csv --query-gpu=power.draw,utilization.gpu,fan.speed,temperature.gpu
echo
echo Memory usage; free -t | awk 'NR == 2 {print $3/$2*100"%"}'
echo
echo Average ping
ping -c 4 google.com | tail -1| awk '{print $4}' | cut -d '/' -f 1
sleep 1
done
