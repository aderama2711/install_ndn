sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev libpcap-dev libsystemd-dev
git clone https://github.com/named-data/ndn-cxx
cd ndn-cxx
git branch ndn-cxx-0.8.0
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "ndn-cxx installed!"

sudo apt install libpcap-dev libsystemd-dev
git clone --recursive https://github.com/named-data/NFD.git
cd NFD
git branch NFD-22.02
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "NFD Installed"

git clone https://github.com/named-data/PSync
cd PSync
./waf configure
./waf
sudo ./waf install
cd ..
sudo ldconfig
echo "PSync Installed"

git clone https://github.com/named-data/NLSR
cd NLSR
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
