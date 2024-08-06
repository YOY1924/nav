 yarn --version || npm install -g yarn
 if [ ! -d "node_modules" ]; then \
        echo "node_modules not found. Running yarn install..."; \
        yarn install; \
    else \
        echo "node_modules found. Skipping yarn install."; \
    fi
 yarn build

 yarn start