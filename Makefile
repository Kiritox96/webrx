run:
	docker stop webrx
	docker rm webrx
	docker build -t webrx .
	docker run --name webrx -d -p 8888:4200 webrx
first:
	docker build -t webrx .
	docker run --name webrx -d -p 8888:4200 webrx