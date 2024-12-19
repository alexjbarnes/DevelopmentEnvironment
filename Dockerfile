FROM debian:latest

# Update package lists and install basic utilities
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Command to run when container starts
CMD ["bash"]
