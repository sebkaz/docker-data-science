# docker-data-science
Docker with python3 and jupyter notebook

## Run 
mkdir notebooks (or differ dir for your notebooks)
docker -run --name docker-data-science -p 8888:8888 -v "notebooks:opt/notebooks" -d docker-data-science

go to localhost:8888

## stop
docker -rm -f docker-data-science
