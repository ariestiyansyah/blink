# demo jobstoday

Using Django-allauth and Twitter Bootstrap.


## Getting Running

1. Install Python.

2. Install a ``virtualenv`` and requirements:

        $ cd demo
        $ virtualenv dev-env
		$ . dev-env/bin/activate
        $ pip install -r requirements.txt

3. Set up and Run:

        $ make configure   # Builds a seed.sql that can be used in `make rebuild`
		$ make rebuild     # The same as `python manage.py syncdb`
        $ make run         # The same as `python manage.py runserver`


4. Visit http://127.0.0.1:8000/