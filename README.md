# Installation

1. Create DB (for local dev):

```bash
docker-compose up -d
```

2. Create db tables and apply seeds (for local dev):

```bash
docker exec -it -u $UID koala-mysql bash

mysql -u koala-aws koala-aws --password=koala-pass < /docker-entrypoint-initdb.d/02-create-table.sql
mysql -u koala-aws koala-aws --password=koala-pass < /docker-entrypoint-initdb.d/03-seeds.sql

exit
exit
```

3. Open [app folder](./app) where is located the app
