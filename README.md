# ZH-Java-Loggin-Practice

File logging for container can be used in 2 ways:
    1. create a docker volume using "--mount type=volume" or "-v"
    2. bind a host directory using "--mount type=bind"
The docker keys:
    * source(src):
        * volume type - name of the volume
        * bind type - path in the host file system
    * target - path, that will be used in application

Example:
    - docker run -d --name devtest -v app-log:/app-log -e LOG_PATH="/app-log" ${app-image}
    - docker run -d --name devtest --mount type=bind,src="${pwd}",target="/app-log" -e LOG_PATH="/app-log" ${app-image}

References:
    - https://docs.docker.com/storage/bind-mounts/
    - https://docs.docker.com/storage/volumes/
    - https://cloudnweb.dev/2020/10/everything-you-need-to-know-about-docker-volume/