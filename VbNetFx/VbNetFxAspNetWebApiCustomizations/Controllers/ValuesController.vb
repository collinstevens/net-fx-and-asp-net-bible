Imports System.Web.Http

Public Class ValuesController
    Inherits ApiController

    ' GET api/values
    Public Function GetValues() As IEnumerable(Of String)
        Return New String() {"value1", "value2"}
    End Function

    ' GET api/ValuesThreadSleep
    <HttpGet>
    <Route("api/ValuesThreadSleep")>
    Public Function GetValuesThreadSleep() As IEnumerable(Of String)
        Thread.Sleep(TimeSpan.FromSeconds(1))
        Return New String() {"value1", "value2"}
    End Function

    ' GET api/ValuesTaskDelay
    <HttpGet>
    <Route("api/ValuesTaskDelay")>
    Public Async Function GetValuesTaskDelay() As Task(Of IEnumerable(Of String))
        Await Task.Delay(TimeSpan.FromSeconds(1))
        Return New String() {"value1", "value2"}
    End Function

    ' GET api/ThreadPool
    <HttpGet>
    <Route("api/ThreadPool")>
    Public Function GetThreadPool() As ThreadPoolInfo
        Dim availableWorkerThreads = 0
        Dim availableCompletionPortThreads = 0
        ThreadPool.GetAvailableThreads(availableWorkerThreads, availableCompletionPortThreads)

        Dim minWorkerThreads = 0
        Dim minCompletionPortThreads = 0
        ThreadPool.GetMinThreads(minWorkerThreads, minCompletionPortThreads)

        Dim maxWorkerThreads = 0
        Dim maxCompletionPortThreads = 0
        ThreadPool.GetMaxThreads(maxWorkerThreads, maxCompletionPortThreads)

        Dim currentProcess = Process.GetCurrentProcess()

        Return New ThreadPoolInfo With {
          .ThreadCount = currentProcess.Threads.Count,
          .AvailableWorkerThreads = availableWorkerThreads,
          .AvailableCompletionPortThreads = availableCompletionPortThreads,
          .MinWorkerThreads = minWorkerThreads,
          .MinCompletionPortThreads = minCompletionPortThreads,
          .MaxWorkerThreads = maxWorkerThreads,
          .MaxCompletionPortThreads = maxCompletionPortThreads
        }
    End Function

    ' POST api/ThreadPool
    <HttpPost>
    <Route("api/ThreadPool")>
    Public Sub PostThreadPool(<FromBody()> threadPoolInfo As ThreadPoolInfo)
        ThreadPool.SetMinThreads(threadPoolInfo.MinWorkerThreads, threadPoolInfo.MinCompletionPortThreads)
        ThreadPool.SetMaxThreads(threadPoolInfo.MaxWorkerThreads, threadPoolInfo.MaxCompletionPortThreads)
    End Sub

    ' GET api/values/5
    Public Function GetValue(id As Integer) As String
        Return "value"
    End Function

    ' POST api/values
    Public Sub PostValue(<FromBody()> value As String)

    End Sub

    ' PUT api/values/5
    Public Sub PutValue(id As Integer, <FromBody()> value As String)

    End Sub

    ' DELETE api/values/5
    Public Sub DeleteValue(id As Integer)

    End Sub

    Public Class ThreadPoolInfo
        Public ThreadCount As Integer = 0
        Public AvailableWorkerThreads As Integer = 0
        Public AvailableCompletionPortThreads As Integer = 0
        Public MinWorkerThreads As Integer = 0
        Public MinCompletionPortThreads As Integer = 0
        Public MaxWorkerThreads As Integer = 0
        Public MaxCompletionPortThreads As Integer = 0
    End Class
End Class
