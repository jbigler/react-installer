# react-installer
Docker container used to create React applications.

## Usage
```
docker run --mount type=bind,source="$(pwd)",target=/app --build-arg userid=$(id -u) react-installer:2.1.8 npx create-react-app app
```
