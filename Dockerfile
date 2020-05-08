# specify the node base image with your desired version node:<version>
FROM node:12

COPY server.js .
COPY dist ./dist
COPY node_modules ./node_modules
ENV SERVER_PROXY_ADDRESS http://spring-petclinic-rest:8082

CMD ["node", "server.js"]

# replace this with your application's default port
EXPOSE 8081
