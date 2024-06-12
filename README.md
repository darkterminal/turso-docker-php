## Turso Docker PHP

Starter Template to start using Turso Database in Native PHP!

## Requirement

- [Turo CLI](https://docs.turso.tech/quickstart)

If you want to connect with remote database and embedded replica, you will need an existing database to continue. If you don’t have one, [create one](https://docs.turso.tech/quickstart).

Get the database URL:

```bash
turso db show --url <database-name>
```

Get the database authentication token:

```bash
turso db tokens create <database-name>
```

Assign credentials to the environment variables inside `.env`.

```bash
TURSO_DATABASE_URL=
TURSO_AUTH_TOKEN=
```

> You will want to store these as environment variables.

## Usage

Clone using Git SHH

```bash
git clone git@github.com:tursodatabase/turso-docker-php.git
```

or Clone using Git HTTPS

```bash
git clone https://github.com/tursodatabase/turso-docker-php.git
```

then move to directory you just cloned:

```bash
cd turso-docker-php

chmod +x start scripts/download-libsql-php
./start -b
```

Now! Open this address in browser: http://localhost:1945

> Default connection is using local database file!
