FROM emscripten/emsdk:latest

RUN apt-get update -y \
    && apt-get install -y \
        make    \
        cmake   \
        python3 \
        libsdl2-dev \
        git

# RUN cd / \
#     && git clone https://github.com/emscripten-core/emsdk.git \
#     && cd /emsdk \
#     && ./emsdk install latest \
#     && ./emsdk activate latest


WORKDIR /app

# COPY . /app/

RUN [ "sleep", "3600" ]