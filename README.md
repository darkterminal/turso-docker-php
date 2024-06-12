## Turso Docker PHP

Starter Template to start using Turso Database in Native PHP!

## Requirement

- [Turso CLI](https://docs.turso.tech/quickstart)
- [VSCode Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

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

Open directory you just cloned in VSCode then `cmd/ctrl+shift-p` > `Dev Containers: Reopen in Container`:

```bash
Usage: ./start [OPTION]
  OPTION:
    -d, --daemon       Run PHP server in the background
    -s, --status       Show the status of the PHP server
    -k, --stop         Stop the PHP server
    -h, --help         Display this help message
```

Now! Open this address in browser: http://127.0.0.1:1945

> Default connection is using local database file!
