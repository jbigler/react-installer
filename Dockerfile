FROM node:11.14-alpine
#RUN npm install -g create-react-app \
RUN yarn global add create-react-app@3.0.0 \
                   create-react-native-app \
                   react-native-cli

# Default User ID on my Arch system
# This can be overridden by using --build-arg userid=xxxx
ARG userid=1000

RUN deluser node

# Create a non-root user with UID/GID matching host developer
# RUN addgroup -g $groupid node
RUN adduser -D -u $userid -G users -s /bin/false node

# Give the new user rights to the app
RUN mkdir /app
RUN chown -R node:users /app 
USER node
WORKDIR /app

CMD ["npx" "create-react-app", "/app"]
