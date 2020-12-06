### Test exec to see if Java process becomes PID 1
Reference   https://blog.no42.org/code/docker-java-signals-pid1/

* clone this repo (or copy all the files) to local
* if need to modify Main.java, please install jdk8 `apt install -y openjdk-8-jdk`, `javac Main.java`
* `docker build -t test .`  
* `docker run test`
* open another terminal
  * `docker ps` # get the container id 
  * `docker exec -it {containerid} bash` # `ps -ef` to see if java is pid 1
  * `docker stop` {containerid} # confirm
  
  
