sudo dpkg -i bin/nodejs_9.1.0-1nodesource1_amd64.deb
sudo dpkg -i bin/yarn_1.3.2-1_all.deb

mkdir -p ~/code/bins
tar xzf bin/bower.tar.gz -C ~/code/bins
export PATH=/home/ubuntu-gnome/code/bins/node_modules/.bin:$PATH

