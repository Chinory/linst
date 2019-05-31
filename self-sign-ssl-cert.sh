openssl genrsa -out default.key 2048
openssl req -new -x509 -days 3650 -key default.key -out default.cer -subj="/C=  /CN=$(curl -s icanhazip.com)"
#openssl x509 -noout -text -in default.cer
