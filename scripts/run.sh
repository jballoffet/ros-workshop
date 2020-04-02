xhost +si:localuser:root
docker run --name jupyter-ros \
      -e DISPLAY \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      -v "$( dirname $( readlink -f $0 ) )/../notebooks:/notebooks" \
      -p 8888:8888 \
      -d jupyter-ros
