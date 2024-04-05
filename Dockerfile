# Используем официальный образ PHP с Apache
FROM php:7.4-apache

# Устанавливаем рабочую директорию в контейнере
WORKDIR /var/www/html

# Копируем файлы из локальной директории pages в рабочую директорию контейнера
COPY pages/ .

# Выставляем права для копируемых файлов
RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80 для доступа к Apache
EXPOSE 80
