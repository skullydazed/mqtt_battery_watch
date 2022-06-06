FROM debian:stable
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Pre-reqs
RUN apt update && \
    apt install --no-install-recommends -y build-essential python3-dev python3-paho-mqtt python3-pip python3-setuptools && \
    rm -rf /var/lib/apt/lists/*

# Copy files into place
COPY mqtt_battery_watch /

# Set the entrypoint
ENTRYPOINT ["/mqtt_battery_watch"]
