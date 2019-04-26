# react-installer
Docker container used to create React applications.
Updated to use create-react-app 3.0.0.
Using this image allows you to create a react app without having a local installation of Node.js.

## Build
```
docker build --build-arg userid=$(id -u) -t react-installer:3.0.0 .
```

## Usage
```
docker run --mount type=bind,source="$(pwd)",target=/app react-installer:3.0.0 npx create-react-app app
```
