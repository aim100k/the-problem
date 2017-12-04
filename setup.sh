# Step-1: setup node and yarn
read -p "Do we have internet? [y/n] " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install -y nodejs yarn
else
  sudo dpkg -i bin/nodejs_9.1.0-1nodesource1_amd64.deb
  sudo dpkg -i bin/yarn_1.3.2-1_all.deb
fi

# Step-2: setup bower and project and stuff
mkdir -p ~/code/bins
tar xf bin/bower.tar.gz -C ~/code/bins
export PATH=/home/ubuntu-gnome/code/bins/node_modules/.bin:$PATH
