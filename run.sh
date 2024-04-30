mkdir  /app
cd /app
git clone https://github.com/MMR-46org/$COMPONENT .

source /parameters/params

if [ "$SCHEMA_TYPE" == "mongo" ]; then
  curl -L -O https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
  mongo --ssl --host $DOCDB_ENDPOINT:27017 --sslCAFile global-bundle.pem --username $DOCDB_USER --password $DOCDB_PASS </app/schema/$COMPONENT.js


fi
