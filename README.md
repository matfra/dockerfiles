
## Build
```
sudo docker build -t gmusicsync:latest .
```

## First start
```
sudo docker run --name gmusicsyncmatt -it -v /home/mathieu/music/:/music gmusicsync
```

## Regular run
```
sudo docker start -i gmusicsyncmatt
```
