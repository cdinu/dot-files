These are some my configuration files.

Install the required programs manually

```
apt-get update
apt-get install -y curl wget
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get install -y zsh vim mc git nodejs tmux
wget -qO- https://get.docker.com/ | sh
npm i -g jshint jscs webpack webpack-dev-server
```

Then carefully run `install.sh`. The script overwrites everyting, so be careful!

There is a [Docker Container image](https://registry.hub.docker.com/u/cdinu/dev-machine) to have all this goodies on a Linux machine.

The command line that you can alias is
```
docker run --name golem --hostname golem -ti -v $PWD:/host/current -v $HOME:/host/home -v /var/run:/var/run -v $HOME/.ssh:/root/.ssh:ro --privileged  cdinu/dev-machine /bin/zsh
```

Add your needed ports so that what you run in the machine is available publicly. Syntax for that is:

```
docker run --name golem --hostname golem -ti -p 3000:3000 -p 8080:8080 -v $PWD:/host/current -v $HOME:/host/home -v /var/run:/var/run -v $HOME/.ssh:/root/.ssh:ro --privileged  cdinu/dev-machine /bin/zsh
```
