# Udagram Microservices

- Udagram is a simple cloud application developed alongside the [Udacity Cloud Engineering Nanodegree](https://www.udacity.com/course/cloud-developer-nanodegree--nd9990). It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.

The project is split into four services:

1. [The Simple Frontend](./udacity-c3-frontend/)
A basic Ionic client web application which consumes the RestAPI Backend.

2. [The User RestAPI Backend](./udacity-c3-restapi-feed/), a Node-Express server which does user authentication and registration.

3. [The Feed RestAPI Backend](./udacity-c3-restapi-feed/), a Node-Express server which is used to list feeds and upload feed images to an AWS S3 bucket.

4. [The Image Filtering Microservice](./udacity-c3-image-filter/), a Node-Express server which runs a simple script to process images.