sc1SERGIO
Script Bash que genera una página web HTML servida por NGINX en Docker.

Uso
mkdir -p web
docker run -d --name servidor-nginx -p 8080:80 -v "$PWD/web:/usr/share/nginx/html:ro" nginx
chmod +x genera_web.sh &0& ./genera_web.sh
Abrir http://localhost:8080
