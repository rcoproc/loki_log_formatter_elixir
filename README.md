# AutoFinder with Loki Logger, and Credo 🈂

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

![Grafana backend](https://github.com/rcoproc/loki_log_formatter_elixir/blob/master/public/grafana_all_logs.png)

## Run Credo static code analysis:

https://github.com/rrrene/credo?utm_source=elixirdigest&utm_medium=email&utm_campaign=246

    mix credo list

![Credo Analysis tool](https://camo.githubusercontent.com/a0451c43f301b4d1ab2186e600e552d0f12093cc/68747470733a2f2f7261772e6769746875622e636f6d2f727272656e652f637265646f2f6d61737465722f6173736574732f73637265656e73686f742e706e67)

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
