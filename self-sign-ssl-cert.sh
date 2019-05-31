openssl genrsa -out default.key 1024
openssl req -new -x509 -days 3650 -key default.key -out default.cer -subj="/C=US/CN=$(curl -s icanhazip.com)"
#openssl x509 -noout -text -in default.cer
