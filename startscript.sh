#!/bin/bash 
echo "running script" 

if [ "$LOGSTASH_USER" = "" ] 
then 
	if [ "$DEBUG" == "true" ] 
	then 
		echo "running netdiscovery $NETD_ARG " 
		
		netdiscovery $NETD_ARG -> temp.xml
		echo "************netdiscovery output************"
		cat temp.xml
	else
		netdiscovery $NETD_ARG  
	fi 
	
else 
	if [ "$DEBUG" == "true" ] 
  then 
		echo "running netdiscovery $NETD_ARG " 
		
		netdiscovery $NETD_ARG -> temp.xml
		echo "************netdiscovery output************"
		cat temp.xml
	else
		netdiscovery $NETD_ARG  
	fi  
	
fi 
