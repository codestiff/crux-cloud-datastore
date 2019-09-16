#!/bin/sh

docker run -it -v $(pwd)/:/home/user/ --entrypoint /usr/local/bin/clojure ccf $@

