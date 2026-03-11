cd /home/ubuntu || exit 1
sudo apt update && sudo apt install -y nodejs npm 
sudo npm install -g pm2

cd /home/ubuntu/SimpleApplication || exit 1

npm install
echo "$privatekey" > privatekey.pem
echo "$server" > server.crt

chmod 600 privatekey.pem
chmod 644 server.crt
pm2 delete simple_application || true
pm2 start ./bin/www --name "simple_application"

# another test on deploy.sh