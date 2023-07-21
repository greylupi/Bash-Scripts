!/bin/bash

if [ "$1" == "" ]
then
echo "********************************************************"
echo "*    This script will do a ping sweep of the network   *"
echo "*                                                      *"
echo "*         Proper argument must be provided             *"
echo "*                                                      *"
echo "*           This script needs 1 argument:              *"
echo "*        1) Three first octets of an IP address        *"
echo "*                                                      *"
echo "*          Example: ./ip_sweep.sh 10.10.10             *"
echo "********************************************************"

else
for ip in $(seq 1 254); do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
