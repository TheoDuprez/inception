VOLUME_DATA="/home/tduprez/data"

all:
	mkdir -p $(VOLUME_DATA)/wordpress $(VOLUME_DATA)/mariadb
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

fclean: down
	sudo rm -rf $(VOLUME_DATA)

re: fclean all
