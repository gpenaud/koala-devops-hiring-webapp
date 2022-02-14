# ⚠️ Warning

This is an app used in our hiring process (devops). DO NOT USE IT IN PRODUCTION.

# DB Installation

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

---

# Install app

## Requirements

- ⚠️ nodejs v14.x !

## Installation

```bash
npm install
```

## Local Dev (local only)

```bash
npm run dev # access to localhost:3000
```

## Production

1. Set env variables to connect to the specified DB in AWS (look at .env.development file for reference)
2. Build the project `npm run build`
3. Run the project `npm start`
4. Access to `http://localhost:3000`
