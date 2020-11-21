FROM emscripten/emsdk:latest

RUN apt-get update -y \
    && apt-get install -y \
        make    \
        cmake   \
        python3 \
        libsdl2-dev \
        git \ 
    && sdl2-config --cflags


COPY . /src