sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev libpcap-dev libsystemd-dev -y
git clone https://github.com/named-data/ndn-cxx
cd ndn-cxx
git checkout 778ad714
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "ndn-cxx installed!"

sudo apt install libpcap-dev libsystemd-dev -y
git clone --recursive https://github.com/named-data/NFD.git
cd NFD
git checkout 5006c1d6
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "NFD Installed"

git clone https://github.com/named-data/PSync
cd PSync
git checkout 9f14dcd
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "PSync Installed"

git clone https://github.com/named-data/NLSR
cd NLSR
git checkout a3a6397
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "NLSR Installed"

git clone https://github.com/aderama2711/ndn-traffic-generator
cd ndn-traffic-generator
./waf configure
./waf
sudo ./waf install
cd ..
echo "TrafficGen Installed"
sudo ldconfig
echo "DONE!"
