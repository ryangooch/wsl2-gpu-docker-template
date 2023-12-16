# wsl2-gpu-docker-template
Template for creating a Docker container that provides access to a GPU for Pytorch

## Intent
Serves a simple Docker setup for local, containerized, Pytorch + GPU development with Jupyter.

## Local Usage
The main thing to remember to change is the absolute path to the `notebooks` folder to your local
path.
Otherwise, this can be cloned and used as is.

## Installation
First, you'll need to make sure that you have the appropriate NVIDIA drivers already installed.
If you're running this in WSL, you'll also need to toggle the relevant virtualization item in your BIOS - don't worry, this is usually pretty easy!

Once you have the prerequisites installed, you can clone this repo locally, then specify the absolute path to your `notebooks` directory in the `docker-compose.yaml` file.

After that, use `docker-compose` from your command line to start the repo:

```bash
docker-compose up -d --build
```

I prefer running the container in the background with the `-d` flag, but you can do whatever you want!

## Jupyter

If you want to run the notebook or prototype code using `jupyter`, all you need to do is open a new tab in your browser and navigate to `localhost:8888` and you will have access to a `Jupyter Lab` interface. 
