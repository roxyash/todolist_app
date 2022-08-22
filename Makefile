DB_URL=postgresql://root:root@localhost:5432/todo?sslmode=disable
createdb:
	docker exec -it postgres createdb --username=root --owner=root todo
dropdb:
	docker exec -it postgres dropdb todo

migrateup:
	migrate -path ./schema -database "$(DB_URL)" up

migratedown:
	migrate -path ./schema -database "$(DB_URL)" down

