### Tor with automatic search for working bridges in docker
<img src="https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png" width="200">

## Build

$ ```git clone https://notabug.org/tamper000/tor_autobridge```

$ ```docker build -t tor_autobridge tor_autobridge```

$ ```rm -rf tor_autobridge```

## Run and set autostartup
##### Proxy only
$ ```docker run -d -p 9050:9050 --restart=always tor_autobridge```

##### Proxy and control port
$ ```docker run -d -p 9050:9050 -p 9051:9051 --restart=always tor_autobridge```
