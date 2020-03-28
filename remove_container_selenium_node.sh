docker ps -a | awk '{ print $1,$2 }' | grep elgalu/selenium:latest | awk '{print $1 }' | xargs -I {} docker rm {} -f
