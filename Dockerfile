FROM nginx:1.17.5

COPY public /usr/share/nginx/html

ENV NAME=World
CMD ["bash", "-c", "sed -i s/{{NAME}}/$NAME/g /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]