sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev libpcap-dev libsystemd-dev
git clone https://github.com/named-data/ndn-cxx
cd ndn-cxx
./waf configure
sudo ./waf install
cd ..
echo "ndn-cxx installed!"

git clone --recursive https://github.com/named-data/NFD.git
cd NFD
./waf configure
./waf
sudo ./waf install
cd ..
echo "NFD Installed"

git clone https://github.com/named-data/PSync
cd PSync
./waf configure
./waf
sudo ./waf install
cd ..
echo "PSync Installed"

git clone https://github.com/named-data/NLSR
cd NLSR
./waf configure
./waf
sudo ./waf install
cd ..
echo "NLSR Installed"

git clone https://github.com/aderama2711/ndn-traffic-generator_modified
cd ndn-traffic-generator_modified
chmod +x waf
./waf configure
./waf
sudo ./waf install
cd ..
echo "TrafficGen Installed"
sudo ldconfig
echo "DONE!"