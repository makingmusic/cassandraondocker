docker volume rm dbstore
docker system prune
docker volume create dbstoregit clone git@github.com:makingmusic/mysqlondocker.git
chmod 755 start_in_container.sh
docker build . -t merasqlimage
docker volume create dbstore
docker compose -f compose-merasql.yaml up --build 
