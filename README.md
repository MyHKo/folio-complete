To run the project you must have Docker on your machine up and running. 
Below there are command to build and run images

Also, before starting you need to create a network in your local docker enviroment:
- docker create network my_network

- frontend-build: docker build -t folio-front .
- frontend-run: docker run folio-front

- database-build: docker build -t folio-db .
- database-run: docker run --name database --network my_network -p 5432:5432 folio-db

- pgAdmin-build: docker build -t folio_pgadmin .
- pgAdmin-run: docker run --name pg_admin --network my_network -p 80:80 folio_pgadmin

