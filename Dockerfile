FROM node:16.14.2 as docusaurus

WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm ci

COPY ./ ./

RUN npm run build

FROM nginx:1.20.2

COPY --from=docusaurus /app/build /usr/share/nginx/html

