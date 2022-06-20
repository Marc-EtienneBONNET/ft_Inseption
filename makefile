all :
	docker-compose up --build -d
clear :
	docker-compose down

nginx:
	docker build -t nginx docker_nginx/.
	docker run -tip 80:80 nginx

wp:
	docker build -t wp docker_wordpress/.
	docker run -tip 9000:9000 wp

db:
	docker build -t wp docker_mariadb/.
	docker run -tip 9000:9000 mariadb