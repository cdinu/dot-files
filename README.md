These are my configuration files. For now VIM is enough

In the future I plan to have the scripts to install required npm packages for develpment as well. For now these are:

Install the required programs

```
apt-get update
apt-get install -y curl wget
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get install -y zsh vim mc git nodejs
wget -qO- https://get.docker.com/ | sh
npm i -g jshint jscs webpack webpack-dev-server
```

