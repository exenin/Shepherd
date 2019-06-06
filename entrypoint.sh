cd /app/code
python3 manage.py migrate
python3 manage.py loaddata catalog/fixtures/initial_values.json

python3 manage.py collectstatic

python3 manage.py qcluster &
python3 manage.py runserver 0.0.0.0:8000
