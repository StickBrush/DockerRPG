# DockerRPG - EasyRPG web player in Docker

This project is a simple (and light!) Dockerfile to ease on the deployment of EasyRPG web players.

## I came here to play, not to read!

Just run this image in detached mode. Mount your games folder for the EasyRPG web player under `/games`, and redirect port 8000 of the container to your desired port. Happy gaming!

```bash
docker run -d -p 8000:8000 -v /path/to/games:/games stickbrush/docker-rpg
```
