# zshUV 

## GOAL 
* Docker with stable-slim Debian version
* All tools you need to start light programming 
* Tmux can split your terminal in multiple panles

## Documentation and resume main CLI

Manual docker : https://docs.docker.com/manuals/

DOCKER basics CLI : 
* Verify Dockerfile :  docker build --check .
* Buliding image from Dockerfile :  docker build -t zshuv . 
* Cleaning all images(be carefull) :  docker system prune -af  
* Remove image : docker rmi -f zshuv
* Runing image in zsh : docker run -it zshuv /bin/zsh 
* Listing images : docker images
* Monitoring dockers : docker stats
* Stopper un docker : docker stop zshuv

## Install from terminal
1. $> git clone https://github.com/qwarksky/zshuv.git zshuv
2. $> docker build -t zshuv .
3. $> docker run -it zshuv /bin/zsh 
