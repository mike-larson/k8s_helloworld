FROM nginx:1.17.5

COPY public /usr/share/nginx/html

ENV REGION=''
CMD ["bash", "-c", "sed -i s/{{REGION}}/$REGION/g /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]