# Docker-compose для CMF Cotonti
 
Пакет файлов для развертывания локального окружения необходимого для разработки сайта на CMF Cotonti.  <br/><br/>
В состав входит: nginx, php-fpm 7.3, mysql 8.0, phpmyadmin

## Установка

1. Скопируйте содержимое репозитория в корневую директорию вашего проекта на Cotonti.
2. Запустите сборку с помощью команды <br/><br/>
<code>make init</code><br/><br/>
3. Ваш сайт будет доступен по адресу http://localhost
4. PhpMyAdmin можно открыть по адресу: http://localhost:8082.
5. Доступ к БД cotonti: <br/>Логин: root, пароль: secret
