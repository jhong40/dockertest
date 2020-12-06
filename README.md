### Test exec to see the PID 1
Reference   https://blog.no42.org/code/docker-java-signals-pid1/

* clone this repo (or copy all the files) to local
* `docker build -t test .`
* `docker run test`
* open another terminal
  * `docker ps` # get the container id 
  * `docker exec -it {containerid} bash` # `ps -ef` check the pid
  * `docker stop` {containerid} # confirm
  
  
