#!/bin/bash
# git clone https://github.com/metasfresh/metasfresh-dist-orgs.git
# wenn schon da: git pull

SCRIPTS_DIR=/tmp/metasfresh-dist-orgs/base/src/main/sql/postgresql/system/90-de.metas.vertical.orgs
DATABASE_NAME=metasfresh
set -e
for file in $SCRIPTS_DIR/*.sql
do
  FILE_CONTENT=$(cat $file)
  docker exec -u postgres orgsdocker_db_1 psql -d $DATABASE_NAME -c "$FILE_CONTENT"
done

exit 0
