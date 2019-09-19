# crux-cloud-datastore

## Work in progress, based on https://github.com/avisi-apps/crux-active-objects

A Cloud Datastore backed TxLog implementation to use Crux with Google App Engine

[![Clojars Project](https://img.shields.io/clojars/v/xlfe/crux-cloud-datastore.svg)](https://clojars.org/xlfe/crux-cloud-datastore)

Example usage:

```clojure
(require '[net.xlfe.crux.bootstrap.cloud-datastore :as cd])
(cd/start-cd-node {:cd cd
                  :kv-backend "crux.kv.memdb.MemKv"
                  :db-dir db-dir})
```


## Testing

```bash
docker build . --build-arg USER=$(whoami) --build-arg UID=$(id -u) -t ccd
./run.sh -A:test:runner
```

