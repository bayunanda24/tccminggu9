RUN apk add --update nginx && \
		rm -rf /var/chache/apk/* && \
		mkdir -p /tmp/nginx/

Copy files/ngix.conf /etc/nginx/ngix.conf
Copy files/default.conf /etc/nginx/conf.d/default.conf
ADD files/index.html /usr/share/nginx/html/

EXPOSE 80/top

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]