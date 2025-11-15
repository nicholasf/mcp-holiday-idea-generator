.PHONY:

db_down:
	dropdb -U postgres holidays_$(ENV)

db_up:
	createdb -U postgres holidays_$(ENV) 
	psql -U postgres holidays_$(ENV) < db/schema.sql 

db_down_and_up: db_down db_up