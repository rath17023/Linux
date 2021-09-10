#Step 1
#Create your start script /Dockerstart.sh
#Code I use below

#Step 2
#Create the following service file with Sudo
#	sudo nano /etc/systemd/system/npm-autostart.service
#		[Unit]
#		After=network.service
#
#		[Service]
#		ExecStart=# Path to Docker Compose /Dockerstart.sh
#
#		[Install]
#		WantedBy=default.target

#Step 3
#Modify the permissions of both files you just created with the following commands.
#	sudo chmod 744 # Path to Docker Compose /Dockerstart.sh
#	sudo chmod 664 /etc/systemd/system/npm-autostart.service

#Step 4
#Reload the daemon and enable the service
#	sudo systemctl daemon-reload
#	sudo systemctl enable npm-autostart.service

## Script Start
#!/bin/sh
## Starting docker containers
## Often I set this up with an init script to auto star/run. I am sure there are better ways but this was the way I know of that works.

cd #Path to where docker Compose is installed this shouldn't be needed but seems to make things more stable.
docker-compose up -d
## Script End
