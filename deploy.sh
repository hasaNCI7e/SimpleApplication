sudo apt update && sudo apt install -y nodejs npm 
sudo npm install -g pm2
pm2 delete simple_application || true
cd SimpleApplication/
npm install
echo "$privatekey" > privatekey.pem
echo "$server" > server.crt

chmod 600 privatekey.pem
chmod 644 server.crt
pm2 start ./bin/www --name "simple_application"

# another test agian 