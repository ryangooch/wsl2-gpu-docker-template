FROM nvidia/cuda:12.1.0-base-ubuntu20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
        git \
        python3-pip \
        python3-dev \
        python3-opencv \
        libglib2.0-0
# Install any python packages you need
COPY requirements.txt requirements.txt

# install stuff
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

# Install PyTorch and torchvision
RUN pip install torch torchvision torchaudio

# install jupyter lab
RUN pip install jupyterlab

# Set the working directory
WORKDIR /app

# run the jupyterlab server
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

# define the entrypoint
# ENTRYPOINT ["/bin/bash", "-c"]