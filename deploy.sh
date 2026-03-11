sudo apt update $$ sudo apt install nodejs npm 
sudo npm install -g pm2
cd simpleApplicaiton
npm install
pm2 start ./bin www --name "simple_application"