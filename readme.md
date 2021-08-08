<p align="center">
 <img src="https://sun9-64.userapi.com/c11263/u13825615/-6/x_3f964139.jpg">
</p>
<p align="center">
Nothing here for now
</p>

1. В директории back копируем .env.testing.example в .env.testing и .env.example в .env, в последнем ставим свои настройки из корневого .env

`.env`
```env
PROJECT_NAME=app

USER_ID=1000
GROUP_ID=1000

#Ip of this machine. Use ipconfig or ifconfig
LOCAL_IP=192.168.0.2

# mysql
# Use any email and password
PGADMIN_DEFAULT_EMAIL=user@mail.com
PGADMIN_DEFAULT_PASSWORD=1
PGADMIN_ENABLE_TLS=false
# --------------------------
POSTGRES_USER=root
POSTGRES_PASSWORD=root

# mail catch
MT_USER=mailtrap
MT_PASSWD=1
MT_MAILBOX_LIMIT=512000001
MT_MESSAGE_LIMIT=102400001

```

В `back/.env` должно получиться примерно так

```env
APP_NAME=App
APP_ENV=local
APP_KEY=7o2iGF3c8I3I0caHJ0SxbMp54ufwigH1
APP_DEBUG=true
APP_URL=https://app.com
APP_TIMEZONE=UTC

LOG_CHANNEL=stack
LOG_SLACK_WEBHOOK_URL=


DB_CONNECTION=pgsql
DB_HOST=app_db
DB_PORT=5432
DB_DATABASE=app
DB_USERNAME=root
DB_PASSWORD=root


CACHE_DRIVER=file
QUEUE_CONNECTION=database

```

2. docker-compose run php sh -c "./artisan key:generate && ./artisan tokens:generate"

3. docker-compose up -d и готово