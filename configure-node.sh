#!/bin/bash

/opt/couchbase/bin/couchbase-server -- -noinput -detached

sleep 10

/opt/couchbase/bin/couchbase-cli cluster-init -c dockercouchbase.onrender.com --cluster-username=$COUCHBASE_ADMIN_USERNAME --cluster-password=$COUCHBASE_ADMIN_PASSWORD --services=data,index,query --cluster-ramsize=1024 --index-storage-setting=default

/opt/couchbase/bin/couchbase-cli bucket-create -c dockercouchbase.onrender.com --username=$COUCHBASE_ADMIN_USERNAME --password=$COUCHBASE_ADMIN_PASSWORD --bucket=default --bucket-type=couchbase --bucket-ramsize=512 --bucket-replica=1 --enable-flush=1
