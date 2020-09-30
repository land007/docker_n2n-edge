FROM land007/n2n:latest

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

ENV GROUP=openwrt \
	KEY=1234567 \
	IP=192.168.11.110 \
	MASK=255.255.255.0 \
	CONNECT=127.0.0.1:30151

RUN echo 'edge -d n2n -c ${GROUP} -k ${KEY} -a ${IP} -l ${CONNECT} -v -f' >> /start.sh

#docker build -t land007/n2n-edge:latest .
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/n2n-edge:latest --push .
#docker rm -f n2n-edge; docker run -it --privileged --network host --restart=always --log-opt max-size=1m --log-opt max-file=1 --name n2n-edge -e "CONNECT=127.0.0.1:30151" -e "IP=192.168.11.21" land007/n2n-edge:latest
