# crux-cloud-firestore

## Work in progress, based on https://github.com/avisi-apps/crux-active-objects

A Cloud Firestore backed TxLog implementation to use Crux with Cloud Firestore

[![Clojars Project](https://img.shields.io/clojars/v/xlfe/crux-cloud-firestore.svg)](https://clojars.org/xlfe/crux-cloud-firestoreobjects)

Example usage:

```clojure
(require '[net.xlfe.crux.bootstrap.cloud-firestore :as cf])
(cf/start-cf-node {:cf cf
                  :kv-backend "crux.kv.memdb.MemKv"
                  :db-dir db-dir})
```


## Testing

```bash
docker build . --build-arg USER=$(whoami) --build-arg UID=$(id -u) -t ccf
./run.sh -A:test:runner
```

