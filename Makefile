install:
	cd web && npm install
	cd ../api && npm install

up:
	docker-compose -f docker/docker-compose.yml up --build

down:
	docker-compose -f docker/docker-compose.yml down

setup:
	make install
	make up