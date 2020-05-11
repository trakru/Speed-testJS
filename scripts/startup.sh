echo "download node.js"
cd /tmp
 curl -sL https://rpm.nodesource.com/setup | bash -
echo "install node.js"
sudo  yum install -y nodejs
echo"install build tools"
sudo yum install gcc-c++ openssl-devel make
echo "install Express.js"
sudo npm install -g express-generator