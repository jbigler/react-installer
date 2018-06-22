# react-installer
Docker container used to create React applications.

## Usage
```
docker run --mount type=bind,source="$(pwd)",target=/app react-installer create-react-app app
```
