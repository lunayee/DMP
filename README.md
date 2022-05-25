# Docker+MySQL+Python

- 虛擬環境
    
    ```powershell
    python -m venv venv
    .\venv\Scripts\Activate.ps1
    ```
    
- pip 安裝
    
    ```powershell
    pip install django
    django-admin startproject {name} .
    
    pip install mysqlclient
    ```
    
- requirements.txt
    
    ```powershell
    pip freeze > requirements.txt
    ```
    

- **docker-compose.yml**
    
    ```powershell
    version: "3"
    services:
      app:
        restart: always
        build: .
        command: bash -c "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000"
        volumes:
          - .:/code
        ports:
          - "8000:8000"
        depends_on:
          - db
      db:
        image: mysql:5.7
        volumes:
          - "./mysql:/var/lib/mysql"
        ports:
          - "3306:3306"
        restart: always
        environment:
          - MYSQL_ROOT_PASSWORD={mypassword}
          - MYSQL_DATABASE={django_app}
    ```
    
- Dockerfile
    
    ```powershell
    FROM python:latest
    ENV PYTHONUNBUFFERED 1
    
    # 添加这两行
    RUN apt-get update
    RUN apt-get install python3-dev default-libmysqlclient-dev -y
    
    RUN mkdir /code
    WORKDIR /code
    RUN pip install pip -U
    ADD requirements.txt /code/
    RUN pip install -r requirements.txt
    ADD . /code/
    ```
    
- 修改 django_app/settings.py
    
    ```powershell
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': 'django_app',
            'USER': 'root',
            'PASSWORD': 'mypassword',
            'HOST': 'db',
            'PORT': '3306',
            'OPTIONS': {'charset': 'utf8mb4'},
        }
    }
    ```
    
- 建立image
    
    ```powershell
    docker-compose build
    ```
    
- 生成並啟動容器
    
    ```powershell
    docker-compose up
    ```
    

pip freeze > requirements.txt