ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Larica.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Larica.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Larica.Repo)

