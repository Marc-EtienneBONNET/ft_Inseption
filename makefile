all :
	docker-compose up --build -d
clear :
	docker-compose down --rmi all

fclear: clear 
	docker image prune 
	docker volume prune 
	docker network prune 
	docker system prune --volumes 

nginx:
	docker build -t nginx docker_nginx/.
	docker run -tip 80:80 nginx

wp:
	docker build -t wp docker_wordpress/.
	docker run -tip 9000:9000 wp

db:
	docker build -t mariadb docker_mariadb/.
	docker run -tip 100:100 mariadb