Code.require_file("spec/phoenix_helper.exs")

ESpec.configure fn(config) ->
  config.before fn ->
    :ok = Ecto.Adapters.SQL.Sandbox.checkout( Larica.Repo )
    {:shared, hello: :world}
  end

  config.finally fn(_shared) ->
    :ok = Ecto.Adapters.SQL.Sandbox.checkin( Larica.Repo )
    :ok
  end
end
