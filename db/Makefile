usage:
	@echo Usage: make '[ up | migrate-up | migrate-down | migrate-force | migrate-create | setup ]'
	@echo ref: https://github.com/golang-migrate/migrate

MYSQL_URL='postgres://fastapi:fastapi@127.0.0.1:5432/fastapi?sslmode=disable'
# MYSQL_URL='mysql://hrag:hrag@(127.0.0.1:3306)/hrag?charset=utf8mb4'

up:
	./migrate -database ${MYSQL_URL} -path ./migrations up

migrate-up:
	@echo Usage: ./migrate -database ${MYSQL_URL} -path ./migrations up N

migrate-down:
	@echo Usage: ./migrate -database ${MYSQL_URL} -path ./migrations down N

migrate-force:
	@echo Usage: ./migrate -database ${MYSQL_URL} -path ./migrations force N

migrate-create:
	@echo Usage: ./migrate create -ext sql -dir ./migrations -seq xxx

setup:
	curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.0/migrate.linux-amd64.tar.gz | tar xvzf - migrate

docker-up:
	docker run -v ${CURDIR}/migrations:/migrations --network host migrate/migrate -path=/migrations/ -database ${MYSQL_URL} up

build:
	docker build . -t migrate
