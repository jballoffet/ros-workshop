# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-bionic

#RUN apt-get u# Install dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    apache2 \
    curl \
    git \
    python2.7 \
    python-pip
RUN pip install --upgrade pip

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-melodic-desktop-full \
    && rm -rf /var/lib/apt/lists/*

# install jupyter and configure
RUN pip2 install \
        bqplot \
        ipywidgets \
        jupyter \
        matplotlib \
        pyyaml
RUN jupyter nbextension enable --py widgetsnbextension


RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

RUN mkdir notebooks

RUN jupyter notebook --generate-config --allow-root
# https://github.com/ecell/ecell4_base/wiki/Security-in-the-Docker-Jupyter-notebook-server#password-auth
RUN echo "c.NotebookApp.password = u'sha1:952b43b1155c:263986410d99aa40b6ce9bd3ee90cb6c6d4232c1'" >> /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
