#!/bin/bash
set -e # Error out immediately on failed line
set +x # Don't print commands as they are run

# VERSION="48"
# VERSION now set in Dockerfile or overridden from command line

# If we're using the latest version (it's not manually specified)
if [ "$VERSION" == "LATEST" ]
# Lookup the latest version available from the API and save it to the version variable
then VERSION=$(curl https://api.modpacks.ch/public/modpack/6/ | jq '.versions[-1].id'); fi;




echo "Downloading installer..."
wget https://api.modpacks.ch/public/modpack/6/$VERSION/server/linux --content-disposition
echo "Making it executable..."
chmod +x ./serverinstall_6_$VERSION
echo "Executing installer..."
yes y | ./serverinstall_6_$VERSION # Agree to Installation
echo "Creating Minecraft EULA file"
echo "eula=true" > eula.txt # Agree to Minecraft EULA
echo "Starting Minecraft server..."
java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx4G -Xms3072M -jar forge-*.jar nogui