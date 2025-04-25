# zshUV 

## GOAL 
* Docker with stable-slim Debian version
* All tools you need to start light programming 
* Tmux can split your terminal in multiple panles

## Documentation and resume main CLI

* Docker : https://docs.docker.com/manuals/
* UV : https://docs.astral.sh/uv/guides/projects/

## DOCKER basics CLI : 
* Verify Dockerfile :  docker build --check .
* Buliding image from Dockerfile :  docker build -t zshuv . 
* Cleaning all images(be carefull) :  docker system prune -af  
* Remove image : docker rmi -f zshuv
* Runing image in zsh : docker run -it zshuv /bin/zsh 
* Listing images : docker images
* Monitoring dockers : docker stats
* Stopper un docker : docker stop zshuv

## UV basics CLI : 
* Creat projet : uv init new_project
* Install specific python version : uv python install 3.14
* Run streamlit : uv run --active streamlit run home.py

## Install from terminal
1. $> git clone https://github.com/qwarksky/zshuv.git zshuv
2. $> docker build -t zshuv .
3. $> docker run -it zshuv /bin/zsh 
