FROM gcc:10

WORKDIR /app

RUN apt-get update -y \
    && apt-get install -y \
        make    \
        cmake   \
        python3 \
        libsdl2-dev \
        git

# RUN git clone https://github.com/emscripten-core/emsdk.git

# WORKDIR /app/emsdk

# RUN ./emsdk install latest

# RUN ./emsdk activate latest


WORKDIR /app

COPY . /app/

# RUN source ./emsdk/emsdk_env.sh 
# RUN cmake .