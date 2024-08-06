# Use Node.js 18 as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app
COPY ./ /app/nav

WORKDIR /app/nav
# Install git and openssh-client
RUN apt-get update && apt-get install -y git openssh-client

RUN yarn --version || npm install -g yarn
RUN if [ ! -d "node_modules" ]; then \
        echo "node_modules not found. Running yarn install..."; \
        yarn install; \
    else \
        echo "node_modules found. Skipping yarn install."; \
    fi
RUN yarn build
CMD [ "yarn", "start" ]