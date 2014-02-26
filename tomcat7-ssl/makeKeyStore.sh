#!/bin/bash
rm ssl/keystore.jks ssl/server.xml
read -p "Enter keystore password >" -s keypass
echo
read -p "Confirm keystore password >" -s keypass2
echo
if [ $keypass != $keypass2 ];then
  echo "passwords do not match"
  exit 1
fi
keytool -genkey -keyalg RSA -alias tomcat -keystore ssl/keystore.jks -storepass $keypass -keysize 2048 -dname "CN=Dev Only, OU=DIT, O=FDIC, L=Arlington, S=Virginia, C=US" -keypass $keypass
cat ssl/server.xml.template  | sed -e "s/changeit/${keypass}/g" > ssl/server.xml
