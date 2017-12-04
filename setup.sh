curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y nodejs yarn

mkdir -p ~/code/bins
tar xf bin/bower.tar.gz -C ~/code/bins
export PATH=/home/ubuntu-gnome/code/bins/node_modules/.bin:$PATH
