createdb:
	@sudo -u harishkrishnan createdb simple_bank

dropdb:
	@sudo -u harishkrishnan dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://harishkrishnan:$PWD@localhost:5432/simple_bank" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://harishkrishnan:$PWD@localhost:5432/simple_bank" -verbose down

.PHONY: createdb dropdb migrateup migratedown