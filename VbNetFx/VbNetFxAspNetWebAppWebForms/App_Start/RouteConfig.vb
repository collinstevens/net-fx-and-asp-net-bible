Imports Microsoft.AspNet.FriendlyUrls
Imports System.Web.Routing

Public Module RouteConfig
  Sub RegisterRoutes(ByVal routes As RouteCollection)
    Dim settings As FriendlyUrlSettings = New FriendlyUrlSettings() With {
        .AutoRedirectMode = RedirectMode.Permanent
    }
    routes.EnableFriendlyUrls(settings)
  End Sub
End Module
