# Base image
FROM ubuntu:latest

# Set working directory
WORKDIR /opt/facebooc

# Update package list and install required packages
RUN apt-get update && \
    apt-get install -yq build-essential make git libsqlite3-dev sqlite3

# Copy source code to container
COPY . /opt/facebooc


# Compile the C code
RUN make all

EXPOSE 16000
# Set the command to run when the container starts
CMD ["bin/facebooc"]
