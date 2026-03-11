sudo apt update && sudo apt install -y nodejs npm 
sudo npm install -g pm2
pm2 delete simple_application || true
cd SimpleApplication/
npm install
echo $PRIVATE_KEY > private_key.pem
echo &SERVER_KEY > server_key.crt
pm2 start ./bin/www --name "simple_application"