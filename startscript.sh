#!/bin/bash 
echo "running script" 

if [ "$LOGSTASH_USER" = "" ] 
then 
	if [ "$DEBUG" == "true" ] 
	then 
		echo "running netdiscover $NETD_ARG " 
		
		netdiscover $NETD_ARG -> temp.xml
		echo "************netdiscovery output************"
		cat temp.xml
	else
		netdiscover $NETD_ARG  
	fi 
	
else 
	if [ "$DEBUG" == "true" ] 
  then 
		echo "running netdiscover $NETD_ARG " 
		
		netdiscover $NETD_ARG -> temp.xml
		echo "************netdiscovery output************"
		cat temp.xml
	else
		netdiscover $NETD_ARG  
	fi  
	
fi 
