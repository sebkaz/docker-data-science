# docker-data-science
Docker with python3 and jupyter notebook - slim version


## build

docker build -t docker-data-science .


## Run 
From build image
docker run -d -p 8888:8888 docker-data-science

From DockerHub
docker run -d -p 8888:8888 sebkaz/docker-data-science

go to http://localhost:8888

## stop
docker ps 

get <id> from sebkaz/docker-data-science

docker stop <id>

## remove 
Local:
  
docker rm -f docker-data-science

From DockerHub:
  
docker rm -f sebkaz/docker-data-science
