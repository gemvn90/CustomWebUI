# CustomWebUI
## SSL
sudo apt install build-essential checkinstall zlib1g-dev -y
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./certs/server.key -out ./certs/server.crt