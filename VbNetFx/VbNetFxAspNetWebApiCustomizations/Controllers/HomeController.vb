Public Class HomeController
    Inherits Controller

    Function Index() As ActionResult
        ViewData("Title") = "Home Page"

        Return View()
    End Function
End Class
