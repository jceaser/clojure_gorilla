#!/bin/bash

help()
{
    printf "add help here"
}

build()
{
    docker build \
        -t \
        clojure-gorilla \
        .
}

cmd=

run()
{
    docker run \
        -it --rm \
        -p 8999:8999 \
        --volume "$(pwd):/usr/src/app/" \
        --name clojure-gorilla-run \
        clojure-gorilla ${cmd}
}

main()
{
    build && run
}

if [ "$#" -eq 0 ] ; then
    main
    exit 0
fi

while getopts "hbrs" opt ; do
    case ${opt} in
        h) echo no help ; exit ;;

        b) build ;;
        r) run ;;
        s) cmd=/bin/bash
            run
            ;;

        \?) help ; exit ;;
        *) help ; exit 1 ;;
    esac
done

