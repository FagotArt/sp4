# Используем официальный образ PHP с Apache
FROM serversideup/php:8.1-fpm-nginx

# Устанавливаем рабочую директорию в контейнере
WORKDIR /var/www/html

# Копируем файлы из локальной директории в рабочую директорию контейнера
COPY . .

# Выставляем права для копируемых файлов
RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80 для доступа к Apache
EXPOSE 80
