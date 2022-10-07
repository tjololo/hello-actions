start-container:
	docker run --rm -d -v $(shell pwd)/TestData/:/www/data -v $(shell pwd)/TestData/nginx.conf:/etc/nginx/confg.d/default.conf -p 8080:80 --name nginx-cdn-mock nginx

debug:
	docker run --rm -v $(shell pwd)/TestData/:/var/html/nginx --entrypoint /bin/bash -it --name nginx-cdn-mock nginx

echo:
	echo $(shell pwd)/TestData

stop-container:
	docker stop nginx-cdn-mock