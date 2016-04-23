# Add this above `ExUnit.start`
defmodule Larica.ControllerCase do
  use ExUnit.CaseTemplate



  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Larica.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Larica.Repo, {:shared, self()})
    end

    :ok
  end

  using do
    quote do
      alias Larica.Repo
      use Plug.Test

      # Remember to change this from `defp` to `def` or it can't be used in your
      # tests.
      def send_request(conn) do
        conn
        |> put_private(:plug_skip_csrf_protection, true)
        |> Larica.Endpoint.call([])
      end
    end
  end
end