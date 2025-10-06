# Базовий образ
FROM alpine:latest

# Встановлюємо bash (в Alpine його немає за замовчуванням)
RUN apk add --no-cache bash

# Копіюємо скрипт у контейнер
COPY script.sh /script.sh

# Дозволяємо виконання
RUN chmod +x /script.sh

# Вказуємо команду за замовчуванням
CMD ["/script.sh"]
