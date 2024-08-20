# docker-go-app

**Multi-Stage Docker Build for a Go Application**

This project is part of a series of 1-2 hour projects designed to sharpen Go fundamentals with a focus on DevOps practices.

## Project Overview

This project demonstrates how to use multi-stage Docker builds to create a Go application that is efficiently packaged and ready for deployment. The steps outlined below guide you through writing a simple Go application, containerizing it using Docker, and understanding the benefits of this approach.

## Steps

### Step 1: Write a Simple Go Application
- Develop a basic HTTP server in Go that serves a simple "Hello, Docker!" message.

### Step 2: Create a Dockerfile with Multi-Stage Builds
- Use a multi-stage Dockerfile to compile the Go application and create a minimal Docker image that includes only the compiled binary.

### Step 3: Build and Run the Docker Container
- Build the Docker image and run the container to ensure the application operates as expected.

### Step 4: Optimize and Understand
- Explore how multi-stage builds minimize the Docker image size and why this is beneficial for deployment.






