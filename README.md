# docker-ubuntu-oraclejava
This is a base image for other images based on Ubuntu
it provides i586 version of Oracle JDK 1.6.0_29

=How to prepare=

# Get the sources
```shell
git clone https://github.com/stormsw/docker-ubuntu-oraclejava.git
```

# Download Oracle JDK 1.6.0_29

This is old version of JDK, so you have to lookup it in the archieve

http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase6-419409.html

jdk-6u29-linux-i586.bin

# Build image

```shell
docker build -t ubuntu-java:i586-1.6.0_u29 .
```
