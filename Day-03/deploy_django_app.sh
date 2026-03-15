#!/bin/bash

<< task
deploy a django app and 
handle the code for errors
task

code_clone(){
	echo "Cloning the django app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}
install_requirements(){
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx docker-compose -y
}
required_restart(){
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
}
deploy(){
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker-compose up -d
}
echo "***************DEPLOYMENT STARTED**********"
if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! required_restart; then
	echo "System fault"
	exit 1
fi
if ! deploy; then
	echo "Deployment failed, mail to Admin"
	exit 1
fi
echo "**********DEPLOYMENT DONE************************"

