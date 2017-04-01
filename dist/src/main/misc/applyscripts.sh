#!/bin/bash
# 1. git clone https://github.com/metasfresh/metasfresh-dist-orgs.git
# wenn schon da: git pull 
# 2. wechsel nach dist/src/main/misc/
# 3. Pfad SCRIPTS_Dir anpassen
# 4. chmod a+x applyscripts.sh
# 5. ./applyscripts.sh

SCRIPTS_DIR=/tmp/metasfresh-dist-orgs/base/src/main/sql/postgresql/system/90-de.metas.vertical.orgs
DATABASE_NAME=metasfresh
set -e
for file in $SCRIPTS_DIR/*.sql
do
  FILE_CONTENT=$(cat $file)
  docker exec -u postgres orgsdocker_db_1 psql -d $DATABASE_NAME -c "$FILE_CONTENT"
done

exit 0
