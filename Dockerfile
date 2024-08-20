# Step 1: Build the Go application
FROM golang:1.22.5-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules manifest
COPY go.mod ./
RUN go mod download

# Copy the source code
COPY . .

# Build the application
RUN go build -o hello-docker

# Step 2: Create a minimal Docker image
FROM alpine:latest

# Set the working directory inside the final container
WORKDIR /app 

# Copy the compiled binary from the builder stage
COPY --from=builder /app/hello-docker .

# Expose the port on which the app will run
EXPOSE 8080

# Command to run the application
CMD ["./hello-docker"]