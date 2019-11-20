# Core Platform Demo 01.19 - Docker - Neocova

1. Just run Docker compose to get the Demo up and running. (add -d parameter to run log in background)

```bash
$ docker-compose -f neocova-demo-DEV.yml up
```

# Or build the images

1. Build the Demo Server image

```bash
$ docker build -t com.neocova.tomcat.demo.01.19 .
```

2. Build the MySQL image 

```bash
$ docker build -t com.neocova.mysql.demo.01.19 .
```

3. Build the SMS Server image

```bash
$ docker build -t com.neocova.activemq.demo.01.19 .
```
4. Build the Web Server Nginx image

```bash
$ docker build -t com.neocova.nginx.demo.01.19 .
```

5. Run the Docker images using Compose

```bash
$ docker-compose -f neocova-demo-DEV.yml up
```

6. Verify the running containers

```bash
$ docker ps | grep demo.01.19
```

7. Login to the Demo using the Web UI with these credentials:

username: mifos
password: password

https://localhost:8443/community-app/#/ (this is a self signed certificate and will prompt a warning in your web browser, just ignore it and continue)


8. Note if you have any issues with the volumes and/or entry points remove the volumes (be cautious and never do do this in Production)
```bash
$ docker stop $(docker ps -a -q)
$ docker rm $(docker ps -a -q)
$ docker volume rm $(docker volume ls -q)
```

Reference 

* https://github.com/docker-library/docs/tree/master/mariadb
* https://docs.docker.com/docker-cloud/builds/push-images/


Issues with the reports
* https://stackoverflow.com/questions/37066024/what-is-the-mariadb-dialect-class-name-for-hibernate
* http://sterl.org/2015/09/spring-boot-mariadb/
* http://in.relation.to/2017/02/16/mariadb-dialects/
