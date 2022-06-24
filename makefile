all :
	chmod +x ./srcs/script.sh
	sudo ./srcs/script.sh
	cd ./srcs/ && docker-compose up --build -d
clear :
	cd srcs && docker-compose down --rmi all

fclear: clear 
	cd srcs && docker image prune 
	cd srcs && docker volume prune 
	cd srcs && docker network prune 
	cd srcs && docker system prune --volumes 

re : fclear all
	