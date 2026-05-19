FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 4321

CMD ["npm", "run", "dist/index.html", "--", "--host"]