#!/bin/bash
set -e # Error out immediately on failed line
set +x # Don't print commands as they are run

VERSION="48"

# 48 = 1.2.0
# 46 = 1.1.0




#mkdir -p /usr/src/ftbomnia # Make 
#cp serverinstall_6_48 /usr/src/ftbomnia
#cd /usr/src/ftbomnia
echo "Downloading installer..."
wget https://api.modpacks.ch/public/modpack/6/48/server/linux -O installer
echo "Making it executable..."
chmod +x ./installer
echo "Specifying modpack version"
mv ./installer ./serverinstall_6_$VERSION # The installer can install any version, and checks the filename to choose which to use
echo "Executing installer..."
yes y | ./serverinstall_6_$VERSION # Agree to Installation
echo "Creating Minecraft EULA file"
echo "eula=true" > eula.txt # Agree to Minecraft EULA
java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx4G -Xms3072M -jar forge-1.15.2-31.1.45.jar nogui