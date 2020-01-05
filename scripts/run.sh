docker run --name jupyter-ros -v "$( dirname $( readlink -f $0 ) )/../notebooks:/notebooks" -p 8888:8888 -d jupyter-ros
