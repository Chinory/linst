wget https://nmap.org/dist/ncat-7.60-1.x86_64.rpm
rpm -i ncat-7.60-1.x86_64.rpm
# ProxyCommand ncat --proxy localhost:1080 --proxy-type socks5 %h %p
