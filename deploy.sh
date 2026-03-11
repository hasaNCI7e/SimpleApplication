sudo apt update && sudo apt install -y nodejs npm 
sudo npm install -g pm2
pm2 delete simple_application || true
cd SimpleApplication/
npm install
pm2 start ./bin/www --name "simple_application"