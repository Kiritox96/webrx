run:
	docker stop webrx
	docker rm webrx
	docker build -t webrx .
	docker run -h 127.0.0.1 --name webrx -d -p 4200:4200 webrx
first:
	docker build -t webrx .
	docker run -h 127.0.0.1 --name webrx -d -p 4200:4200 webrx