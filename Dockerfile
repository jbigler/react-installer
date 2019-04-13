FROM node:11-alpine
#RUN npm install -g create-react-app \
RUN yarn global add create-react-app@2.1.8 \
                   create-react-native-app \
                   react-native-cli

# Give the new user rights to the app
RUN mkdir /app
RUN chown -R node:node /app 
USER node
WORKDIR /app

CMD ["npx" "create-react-app", "/app"]
