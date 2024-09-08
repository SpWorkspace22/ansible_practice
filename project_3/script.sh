export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -yqq
echo $(hostname -I)
echo $(python3 -V)
