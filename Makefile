.phony: print-usage

MYSQL_URL='mysql://fastapi:fastapi@(127.0.0.1:3306)/fastapi?charset=utf8mb4'

print-usage:
	# usage: make [ up ]

up:
	uvicorn app.main:app --reload

test:
	pytest -s -v

down:
	docker-compose down

prune:
	docker volume prune

dk-up:
	docker-compose up -d
