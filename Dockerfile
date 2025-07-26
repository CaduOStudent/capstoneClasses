# My initial Code:

# FROM python:3.13-slim

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# COPY . .

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#Esteban Code:
# Entrypoint script to wait for the database to be ready

FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && \
    apt-get install -y netcat-traditional && \
    pip install -r requirements.txt && \
    rm -rf /var/lib/apt/lists

COPY . .

ENTRYPOINT ["/app/entrypoint.sh"]
