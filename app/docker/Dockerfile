FROM nginx:alpine
# Default color
ARG BASE_COLOR=#3498db
COPY ./app/src/index.html /usr/share/nginx/html/index.html
RUN sed -i "s/COLOR_PLACEHOLDER/${BASE_COLOR}/g" /usr/share/nginx/html/index.html
