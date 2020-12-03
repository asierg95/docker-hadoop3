# Apache Hadoop 3.1.0 Docker image

Note: this is the master branch - for a particular Hadoop version always check the related branch

## Build the image
`sudo docker build -t hadoop3 .`
## Access the container
`sudo docker exec -it hadoop3 bash`
## Test a job
`yarn jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0.jar pi 10 100`
## Clean
```
sudo docker stop hadoop3 
sudo docker rm hadoop3
``` 

## Pull the image
```docker pull asierg95/hadoop3:latest```

## Start a container
In order to use the Docker image you have just build or pulled use:

Make sure that SELinux is disabled on the host. If you are using boot2docker you don't need to do anything.

```docker run --hostname=hadoop3 -p 8088:8088 -p 9870:9870 -p 9864:9864 -p 19888:19888   -p 8042:8042 -p 9000:9000 --name hadoop3 -d hadoop3:latest```

