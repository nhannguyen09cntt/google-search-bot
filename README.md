# google-search-bot
 ssh root@45.32.127.100

## Install
pip3 install -r requirements.txt

docker run -d --rm -ti --name zalenium -p 4444:4444 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /tmp/videos:/home/seluser/videos \
--privileged dosel/zalenium start

http://45.32.127.100:4444/grid/admin/live

docker ps -a | awk '{ print $1,$2 }' | grep elgalu/selenium:latest | awk '{print $1 }' | xargs -I {} docker rm {} -f

0 */2 * * * cd /root/google-search-bot && ./remove_container_selenium_node.sh
*/15 * * * * cd /root/google-search-bot && /usr/bin/python3 main.py
