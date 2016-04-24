Code.require_file("spec/espec_phoenix_extend.ex")

{:ok, _} = Application.ensure_all_started(:ex_machina)
Faker.start

Mix.Task.run "ecto.create", ["--quiet"]
Mix.Task.run "ecto.migrate", ["--quiet"]
Ecto.Adapters.SQL.Sandbox.mode( Larica.Repo, :manual )
