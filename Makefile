default: run

DATABASE_NAME=db.sqlite3

configure:
	python configure.py

rebuild: deldb syncdb initdb

deldb:
	rm -f $(DATABASE_NAME)

syncdb:
	python manage.py syncdb --noinput

initdb:
	sqlite3 $(DATABASE_NAME) < seed.sql

run:
	python manage.py runserver 0.0.0.0:8000

clean:
	find . -name "*.pyc" -print0 | xargs -0 rm

veryclean: deldb clean
	rm -f blink_web/settings_generated.py
