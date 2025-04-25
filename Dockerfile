## Debian slim
## UV packet python manager

FROM debian:stable-slim
LABEL maintainer="Ezio Qwarksky"


ENV HOME=/root
ENV PATH="$HOME/.local/bin:$PATH"

## Install Package Debian de base
RUN apt-get update && apt-get install -y --no-install-recommends \ 
    vim \
    neovim \
    nano \
    man \
    zsh \
    tmux \
    curl \
    git \
    pipx \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /var/cache/apt/archives/* \
 && chsh -s $(which zsh) \
 && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
 && curl -LsSf https://astral.sh/uv/install.sh | sh \
 && mkdir $HOME/PROJECTS

# Example pyporject toml
COPY pyproject.toml $HOME/PROJECTS

WORKDIR $HOME/PROJECTS

VOLUME $HOME/PROJECTS
