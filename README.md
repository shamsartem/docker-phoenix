# Docker Phoenix

## Prerequisites
Install docker and docker-compose

## Motivation
I wanted to have a starter kit for Phoenix projects that I would be able to run anywhere in docker.
Alpine linux is used for all the docker images.
If you use vscode - all the necessary extensions for developing phoenix application will be installed automatically inside the container

## Set up for vscode users

1. Install https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
2. Open the folder in vscode and it should suggest you to reopen it inside the container

## Get started
1. Start shell session inside the container. For vscode users - just open the terminal (Ctrl + J) - it will already be inside the container. For others - run e.g. `docker exec -it phoenix-docker_app_1 sh`
2. Create new phoenix project `mix phx.new hello_world` and press enter to install dependencies when it prompts you
3. Open `config/dev.exs`and change database hostname to `"db"`
4. Run `mix ecto.create`
5. Run `mix phx.server`

Open browser on `localhost:4000`
