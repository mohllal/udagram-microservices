# Udagram Microservices

[![Build Status](https://travis-ci.com/mohllal/udagram-microservices.svg?branch=master)](https://travis-ci.com/mohllal/udagram-microservices)

Udagram is a simple cloud application developed alongside the [Udacity Cloud Engineering Nanodegree](https://www.udacity.com/course/cloud-developer-nanodegree--nd9990). It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.

The project is split into four services:

1. [The Ionic Client](./udacity-c3-frontend/)
A basic Ionic client web application which consumes the RestAPI Backend.

2. [The User RESTful API Service](./udacity-c3-restapi-feed/), a Node-Express server which does user authentication and registration.

3. [The Feed RESTful API Service](./udacity-c3-restapi-feed/), a Node-Express server which is used to list feeds and upload feed images to an AWS S3 bucket.

4. [The Image Filtering RESTful API Service](./udacity-c3-image-filter/), a Node-Express server which runs a simple script to process images.

## Dockerhub Images

- [The Ionic Client](https://hub.docker.com/repository/docker/mohllal/udacity-frontend)
- [The Feed RESTful API](https://hub.docker.com/repository/docker/mohllal/udacity-restapi-feed)
- [The User RESTful API](https://hub.docker.com/repository/docker/mohllal/udacity-restapi-user)
- [The Image Filtering RESTful API](https://hub.docker.com/repository/docker/mohllal/udacity-image-filter)
- [The Nginx Reverse Proxy](https://hub.docker.com/repository/docker/mohllal/reverseproxy)

## Starting the services as Docker containers locally

- Replace the Dockerhub username ***mohllal*** with your own Dockerhub repository.

- Since the `docker-compose` file uses environment variables, therefore you need to tell the system to use the environment variables from your `~/.profile` file using the command source `~/.profile`.

- Navigate to [udacity-c3-deployment/docker folder](./udacity-c3-deployment/docker/) and build the images for each of our defined services, using the command::

```shell
docker-compose -f docker-compose-build.yaml build --parallel
```

- To start the system, run a container for each of our defined services, in the de-attached mode:

```shell
docker-compose -f docker-compose up -d
```

- To see the list of running containers, run the command - `docker-compose ps`. You will see a list of container names, states, and ports listed.

- Go to the browser and run [http://localhost:8100/](http://localhost:8100/) to see my Udagram application up and running with two functionalities: feed and user service. ***Feed service*** will allow the user to upload images and ***User service*** will allow a user to log-in or log-out from the system.

- If you wish to stop the containers gracefully, use the below command:

```shell
docker-compose stop
# To remove (and stop) the container
docker-compose down
```

## Starting the app as a Kubernetes cluster locally

- Replace the Dockerhub username ***mohllal*** with your own Dockerhub repository.

- Replace all keys in the [env-configmap](./udacity-c3-deployment/k8s/env-configmap.yaml), [env-secret](./udacity-c3-deployment/k8s/env-secret.yaml) and [aws-secret](./udacity-c3-deployment/k8s/aws-secret.yaml) with your values.

- To create K8s ***configMap***, ***secrets***, ***deployments*** and ***services*** use the below command:

```shell
kubectl apply -f udacity-c3-deployment/k8s --recursive
```

- Use Kubernetes port forwarding to see the application running, using the following command:

```shell
kubectl port-forward <reverseproxy-pod> 8080:8080
kubectl port-forward <frontend-pod> 8100:80
```

- Go to the browser and run [http://localhost:8100/](http://localhost:8100/) to see my Udagram application up and running.

## Links

- [REST API server](http://a4328ed99607011eaaa110ae3011d93e-707550298.us-east-1.elb.amazonaws.com:8080/api/v0).
- [Ionic client](http://a438417d2607011eaaa110ae3011d93e-1338661806.us-east-1.elb.amazonaws.com:8100).

***Note***: You can find screenshots for the deployment [here](./screenshots/).

## Resources

- [Deploying a Kubernetes Cluster with Amazon EKS](https://logz.io/blog/amazon-eks-cluster/).

## Technologies

- [Amazon Relational Database Service (RDS)](https://aws.amazon.com/rds/)
- [Amazon Simple Cloud Storage Service (S3)](https://aws.amazon.com/s3/)
- [Amazon Elastic Kubernetes Service (eks)](https://aws.amazon.com/eks/)
- [Amazon CloudWatch](https://aws.amazon.com/cloudwatch/)
- [Amamzon CloudFormation](https://aws.amazon.com/cloudformation/)
- [Docker](https://www.docker.com/)
- [Kubernetes (k8s)](https://kubernetes.io/)
- [Travis CI](https://travis-ci.org/)
- [Node.js](https://nodejs.org/)
