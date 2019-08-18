Задание 2:
Создать Dockerfile на базе nginx со своим index.html и свои конфигом nginx.conf. Сервис nginx в докере должен запускаться на порту 8080.
Должно работать: docker run -p {your_local_port}:8080 {your image}.

How to use:
docker run --rm -d -p localport:8080 <image_id>
