# docker-data-science
Docker with python3 and jupyter notebook - slim version

## Run 

docker run -d -p 8888:8888 -v "full_path_to_your_folder:/notebooks" sebkaz/docker-data-science

go to http://localhost:8888

## stop
docker ps 
get id from sebkaz/docker-data-science
docker stop id
docker -rm -f sebkaz/docker-data-science
