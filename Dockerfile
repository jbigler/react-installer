FROM node:10-alpine
#RUN npm install -g create-react-app \
RUN yarn global add create-react-app \
                   create-react-native-app \
                   react-native-cli

# Give the new user rights to the app
RUN mkdir /app
RUN chown -R node:node /app 
USER node
WORKDIR /app

CMD ["create-react-app", "/app"]
