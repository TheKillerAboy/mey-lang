FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install clang && \
    apt-get -y install llvm

WORKDIR /app

COPY . /app

RUN mkdir bin

RUN clang++ -g -O3 src/main.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o bin/main.o

ENTRYPOINT ["./bin/main.o"]
