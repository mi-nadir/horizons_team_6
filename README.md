# Отборочный этап горизонты 2024 - команда № 6
Наше ПО работало на Linux сервере с Ubuntu 22.04

Установлено:
* HestiaCP (панель управления сервером благодаря которой установлены: PHP 8.2, MySQL 8.0.36 и прочие сервисы)
* Python 3.10
* python3-venv
* Библиотеки gunicorn, aiomysql, pandas, telebot, asyncio

Инструкция:
* Создать виртуальное окружение "social_network" (необходимо чтобы появилась папка /venv/social_network)
* Активировать вышеустановленное окружение, установить необходимые библиотеки python (список выше)
* Поместить содержимое архива python.zip в директорию /python/ (в корне диска)
* Поместить содержимое архива site.zip в директорию с содержимым файлов сайта, в нашем случае было: /home/horizons/web/oxygame.ru/public_html (папка может отличаться в зависимости от конфигурации)
* Создать 2 БД (либо одну), и импортировать sql файлы: horizons_stat.sql и horizons_soc_users.sql
* В папке /python/social_network/ отредактировать файлы class_db_users.py и class_db_stat.py, указать данные для подключения к БД
* В папке с микросервисами (/python/social_network/parser/) отредактировать все файлы, указать данные для подключения к БД
* В файле /python/social_network/parser/telegram_bot_tmk copy.py отредактировать API_TOKEN
* Перейти в папку: cd /python/social_network/
* Запустить gunicorn сервер командой: /venv/social_network/bin/gunicorn -k uvicorn.workers.UvicornWorker main:app --reload --workers=3
* В случае если gunicorn сервер запущен НЕ на том же сервере где расположен сайт, то отредактировать файл ДИРЕКТОРИЯ_САЙТА/api/_curl_send.php и указать адрес gunicon сервера, локальный по умолчанию уже указан: http://127.0.0.1:8000
* Перейти на главную страницу сайта, веб сервисы и приложение должны работать! Логин: test@tmk-group.com Пароль 12345678
