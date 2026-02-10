# check=skip=FromAsCasing

FROM node:18 as build

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install

COPY . .

RUN npm run build

FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install --production

COPY --from=build /app/dist .

EXPOSE 3000

CMD ["node", "./app.js"]
