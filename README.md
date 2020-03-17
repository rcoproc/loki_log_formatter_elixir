# AutoFinder with Loki Logger 🈂

https://akoutmos.com/post/elixir-logging-loki/?utm_source=elixirdigest&utm_medium=email&utm_campaign=246

    $ docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

    $ docker-compose up

    $ curl 'http://localhost:4000/api/used_cars?make=ferrari'
    [{"make":"Ferrari","model":"812","year":2017,"mileage":46945,"price":244424}, ...

    $ curl 'http://localhost:4000/api/used_cars?make=ferrari&model=F8&max_price=155000'
    [{"make":"Ferrari","model":"F8","year":2016,"mileage":56021,"price":152403}, ...

    $ curl 'http://localhost:4000/api/used_cars?make=ferrari&model=Portofino&min_year=2020'
    [{"make":"Ferrari","model":"Portofino","year":2020,"mileage":21333,"price":169790}, ...

    $ curl 'http://localhost:4000/api/used_cars?make=invalid_car_make'
    []


## Run Grafana Backend

    http://localhost:3000/explore

    (Grafana backend)![public/grafana_all_logs.png]

    

To start your Phoenix server(not necessary):

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
