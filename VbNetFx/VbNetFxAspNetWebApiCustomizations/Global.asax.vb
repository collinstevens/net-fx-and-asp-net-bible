Public Class WebApiApplication
    Inherits HttpApplication

    Sub Application_Start()
        AreaRegistration.RegisterAllAreas()
        GlobalConfiguration.Configure(AddressOf Register)
        RegisterGlobalFilters(GlobalFilters.Filters)
        RegisterRoutes(RouteTable.Routes)
        RegisterBundles(BundleTable.Bundles)

        Dim workerThreads = 0
        Dim completionPortThreads = 0
        ThreadPool.GetMinThreads(workerThreads, completionPortThreads)
        ThreadPool.SetMinThreads(workerThreads:=100, completionPortThreads)
    End Sub
End Class
