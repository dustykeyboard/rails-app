# Rails and PostgreSQL in Docker

[Quickstart: Compose and Rails](https://docs.docker.com/samples/rails/)

Generate a new app
```bash
docker compose run --no-deps web rails new . --force --database=postgresql
```

Build the app (and update after modifying Gemfile)
```bash
docker compose build
docker compose run web bundle install
```

Build the db
```bash
docker compose run web rake db:create
```

Run the app
```bash
docker compose up
```