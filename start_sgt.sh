#cd ~/app/base/

#git pull origin sgt-docker

#sudo docker build -t liabasb/sgt:new .

cd /home/sgt_3012/sgt-scripts/

#sudo ./stop_containers.sh 

sudo docker rm -f SGT
sudo docker rm -f SGT_API

sudo ./start_containers.sh -d -e MAIN_DOMAIN=sgt.fnas.lan -e PORT=80 -e UPDATE=false -v /etc/localtime:/etc/localtime:ro

#sudo docker run -p 8080:80 --link postgresql-container:postgresql --link redis-container:redis -ti -e MAIN_DOMAIN=sgt.fnas.lan -e PORT=80 -e UPDATE=true -v /etc/localtime:/etc/localtime:ro -ti --name SGT_API liabasb/sgt:new

