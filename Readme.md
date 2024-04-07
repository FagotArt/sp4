### Шаблон простого PHP сайта для Coolify
Рботает через docker-compose

#### Как запустить

Выполнить команду в корне проекта
````
docker-compose up --build -d
````

После запуска контейнера, можно зайти в контейнер и выполнянить
команды внутри него для входа в bash контейнера выполнить
("app" - имя контейнера в docker-compose.yml)
````
docker-compose exec app /bin/bash
````
Есть два файла конфигурации для docker-compose
один для локально с пробросом портов
[docker-compose.yml](docker-compose.yml)

другой для coolify без проброса портов, инчае не будет работать
[docker-compose-coolify.yml](docker-compose-coolify.yml)


Можно разрабатывать локально через docker,
после отладки для запуска на сервере достаточно сделать комит 
комит в масстер и пуш в удаленный репозиторий
командаЖ

````
git add .  && git commit -m "SaveChange comment" && git push origin master
````

