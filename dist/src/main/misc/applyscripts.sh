#!/bin/bash
# cd /tmp
# git clone https://github.com/metasfresh/metasfresh-dist-orgs.git
# cd /tmp/metasfresh-dist-orgs/dist/src/main/misc/
# chmod a+x applyscripts.sh
# ./applyscripts.sh
# Cache Reset 

SCRIPTS_DIR=/tmp/metasfresh-dist-orgs/base/src/main/sql/postgresql/system/90-de.metas.vertical.orgs
DATABASE_NAME=metasfresh
set -e
for file in $SCRIPTS_DIR/*.sql
do
  FILE_CONTENT=$(cat $file)
  docker exec -u postgres orgs_db_1 psql -d $DATABASE_NAME -c "$FILE_CONTENT"
done

exit 0
