# git clone https://github.com/metasfresh/metasfresh-dist-orgs.git
# wenn schon da: git pull
SCRIPTS_DIR=/home/metasfresh/metasfresh-dist-orgs/base/src/main/sql/postgresql/system/90-de.metas.vertical.orgs
DATABASE_NAME=metasfresh
for file in $SCRIPTS_DIR/*.sql
    do docker exec -it metasfreshdocker_db_1 psql -U metasfresh $DATABASE_NAME -f $file
done
