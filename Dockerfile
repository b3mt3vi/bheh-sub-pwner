FROM debian:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    bash \
    git \
    curl \
    dnsutils \
    python3 \
    python3-dev \
    python3-venv \
    wget \
    ca-certificates

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Set the virtual environment as the active environment
ENV PATH="/opt/venv/bin:$PATH"

# Install required Python packages within the virtual environment
RUN pip install --upgrade pip && \
    pip install amass sublist3r httpx lolcat

# Copy your script into the container
COPY bheh-sub-pwner.sh /usr/local/bin/bheh-sub-pwner.sh

# Make your script executable
RUN chmod +x /usr/local/bin/bheh-sub-pwner.sh

# Set the entrypoint for your script
ENTRYPOINT ["/usr/local/bin/bheh-sub-pwner.sh"]

