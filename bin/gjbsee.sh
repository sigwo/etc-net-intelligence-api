#!/usr/bin/env bash

trap "exit" INT

if [[ -f $(which ec2metadata 2>/dev/null) ]]
then
	# If ec2 instance then get ips from ec2metadata
	LOCALIP=$(ec2metadata --local-ipv4)
	IP=$(ec2metadata --public-ipv4)
else
	# Else get IPs from ifconfig and dig
	LOCALIP=$(ifconfig | grep 'inet ' | grep -v '127.0.0.1' | head -n1 | awk '{print $2}' | cut -d':' -f2)
	IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
fi

echo "Local IP: $LOCALIP"
echo "Public IP: $IP"

if [[ -f $(which gjbsee 2>/dev/null) ]]
then
	echo "Starting gjbsee: Jumbucks Style"
	echo gjbsee --rpc --bootnodes "enode://13e07d637d170fdf1f87edd3d671c1417acb856045c1920c4c0bca1d9c19be2a846af891d2c92a677cbf66b61586426c7fff8f4247b6912d88a7dbb762e26288@107.191.104.192:30303"

elif [[ -f $(which gjbsee 2>/dev/null) ]]
then
	echo "Starting Jumbucks-EE"
        echo "gjbsee --rpc"

else
	echo "Jumbucks-EE was not found!"
	exit 1;
fi
