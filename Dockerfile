# Dockerfile
FROM debian:bookworm-slim

# install deps...
RUN apt-get update && apt-get install -y curl unzip git xz-utils zip openjdk-17-jdk && apt-get clean

# build arg
ARG FLUTTER_SDK
ENV FLUTTER_HOME=/opt/flutter
ENV PATH="${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PATH}"

# copy Flutter SDK into image (not from context, from build arg mount)
COPY flutter3.27 /opt/flutter
# rest of build...

