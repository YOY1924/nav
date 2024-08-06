# Use Node.js 18 as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app
COPY ./ /app/nav

WORKDIR /app/nav
# Install git and openssh-client
RUN apt-get update && apt-get install -y git openssh-client


CMD [ "sh", "/app/nav/docker_init.sh" ]