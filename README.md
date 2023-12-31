# Проект FastAPI "qit-task"

Этот проект представляет собой простое FastAPI-приложение, которое позволяет вам отправлять запросы и получать приветственное сообщение.

## Запуск проекта

Для запуска проекта вам понадобится установить Docker и Python 3.10 (или более позднюю версию).

1. Склонируйте репозиторий:

   ```bash
   git clone github.com/fourmean/qit-test
   cd qit-test
    ```

2. Пересоберите Docker-образ:

    ```bash
   docker build -t qit-test .
   ```
   
3. Запустите Docker-контейнер:

    ```bash
   docker run -p 8000:8000 --name qit-task qit-test
   ```

Приложение будет доступно по адресу http://localhost:8000.

## Использование API

Приложение предоставляет следующий эндпоинт:

- **Возвращает приветственное сообщение с именем**
```http
GET /greet/
```

**Пример запроса:**

```bash
curl "http://localhost:8000/greet/?name=QIT"
```

**Пример ответа:**

```response
{"message": "Hello, QIT"}
```

## Документация Swagger

Вы можете получить доступ к документации Swagger, чтобы ознакомиться с API и опробовать его прямо из браузера:

- **Документация Swagger: http://localhost:8000/docs**
- **Альтернативно, документация ReDoc: http://localhost:8000/redoc**

## Завершение работы

Чтобы остановить контейнер, выполните следующую команду:

```bash
docker stop qit-task
```