docker-amc
==========

Docker image to run Aerospike Management Console

Building the image
------------------

    docker build -t tabmo/docker-amc .

Running Aerospike Management Console
------------------------------------

For community edition:
    
    docker run -p 8081:8081 -d tabmo/docker-amc

For enterprise edition:

    docker run -p 8081:8081 -e AEROSPIKE_USER=YOURUSER -e AEROSPIKE_PASSWORD=YOURPASSWORD -d tabmo/docker-amc

And then, you can access to your amc with the url:

    http://localhost:8081/
