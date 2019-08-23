Task1
Создать Dockerfile на базе Alpine Linux. Поставить туда git. Склонировать с помощью контейнера любой репозиторий
в текущую директорию на хост системе. 

How to use:
 docker run --rm -v $(pwd):/home/git/ <image_id>  <repo-url>
