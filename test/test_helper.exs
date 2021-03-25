ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Ctr.Repo, :manual)
Mox.defmock(CtrApi.ClientMox, for: CtrApi)
