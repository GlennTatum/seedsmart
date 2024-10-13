FROM node:alpine

# RUN npm install -g @ionic/cli native-run cordova-res

# RUN npm install @capacitor/camera @capacitor/preferences @capacitor/filesystem

# RUN npm install @ionic/pwa-elements

COPY . app

WORKDIR app

RUN npm install -g @ionic/cli native-run cordova-res

RUN npm install

ENTRYPOINT [ "ionic" ]

CMD ["serve", "--host", "0.0.0.0"]