run:
	docker stop webrx
	docker rm webrx
	docker build --network="host" -t webrx .
	docker run --name webrx -d -p 4200:4200 webrx
first:
	docker build --network="host" -t webrx .
	docker run --name webrx -d -p 4200:4200 webrx