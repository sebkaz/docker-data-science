# docker-data-science
Docker with python3 and jupyter notebook - slim version


## build
```{bash}
docker build -t docker-data-science .
```

## Run 
From build image
```{bash}
docker run -d -p 8888:8888 docker-data-science
```

From DockerHub
```{bash}
docker run -d -p 8888:8888 sebkaz/docker-data-science
```

Next go to http://localhost:8888

## stop
docker ps 

```{bash}
get <id> from sebkaz/docker-data-science

docker stop <id>
```
## remove 
Local:
```{bash}
docker rm -f docker-data-science
```

From DockerHub:
```{bash}
docker rm -f sebkaz/docker-data-science
```
