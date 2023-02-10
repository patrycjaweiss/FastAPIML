# FastAPIML
XGBoost ML model based on houses data and prices in California predicting the price of a house for given data, using FastAPI

To run at your device:

run 
```
uvicorn api.main:app
```

see 
http://localhost:8000/docs


## Deployment with Docker
1. Build the Docker image
```
docker build --file Dockerfile --tag fastapi-ml-quickstart .
```

2. Running the Docker image
```
docker run -p 8000:8000 fastapi-ml-quickstart
```

3. Entering into the Docker image
```
docker run -it --entrypoint /bin/bash fastapi-ml-quickstart
```

## docker-compose
1. Launching the service
```
docker-compose up
```
