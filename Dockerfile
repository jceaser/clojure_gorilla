FROM clojure

RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y tree

COPY . /usr/src/app
WORKDIR /usr/src/app/gorilla

expose 8999

volume /usr/src/app/

run lein deps

cmd ["lein", "gorilla", ":port", "8999", ":ip", "0.0.0.0"]

