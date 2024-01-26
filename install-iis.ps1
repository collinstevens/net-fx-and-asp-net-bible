# Import-Module ServerManager
# Install-WindowsFeature 
# Uninstall-WindowsFeature
 
Enable-WindowsOptionalFeature -Online -All -FeatureName "IIS-WebServerRole", "IIS-WebServer", "IIS-CommonHttpFeatures", "IIS-DefaultDocument", "IIS-HttpErrors", "IIS-StaticContent", "IIS-HealthAndDiagnostics", "IIS-HttpLogging", "IIS-CustomLogging", "IIS-LoggingLibraries", "IIS-RequestMonitor", "IIS-HttpTracing", "IIS-Performance", "IIS-HttpCompressionStatic", "IIS-HttpCompressionDynamic", "IIS-Security", "IIS-RequestFiltering", "IIS-ApplicationDevelopment", "IIS-NetFxExtensibility45", "IIS-ApplicationInit", "IIS-ASPNET45", "IIS-ISAPIExtensions", "IIS-ISAPIFilter", "IIS-WebServerManagementTools", "IIS-ManagementConsole", "IIS-ManagementScriptingTools", "IIS-ManagementService"

Disable-WindowsOptionalFeature -Online -FeatureName "IIS-DirectoryBrowsing", "IIS-HttpRedirect", "IIS-WebDAV", "IIS-ODBCLogging", "IIS-BasicAuthentication", "IIS-CertProvider", "IIS-ClientCertificateMappingAuthentication", "IIS-DigestAuthentication", "IIS-IISCertificateMappingAuthentication", "IIS-IPSecurity", "IIS-URLAuthorization", "IIS-WindowsAuthentication", "IIS-NetFxExtensibility", "IIS-ASP", "IIS-ASPNET", "IIS-CGI", "IIS-ServerSideIncludes", "IIS-WebSockets", "IIS-FTPServer", "IIS-FTPSvc", "IIS-FTPExtensibility", "IIS-HostableWebCore", "IIS-IIS6ManagementCompatibility", "IIS-Metabase", "IIS-LegacySnapIn", "IIS-LegacyScripts", "IIS-WMICompatibility"

# Web-Server, IIS-WebServerRole
# Web-WebServer, IIS-WebServer
# Web-Common-Http, IIS-CommonHttpFeatures
# Web-Default-Doc, IIS-DefaultDocument
# -Web-Dir-Browsing, IIS-DirectoryBrowsing
# Web-Http-Errors, IIS-HttpErrors
# Web-Static-Content, IIS-StaticContent
# -Web-Http-Redirect, IIS-HttpRedirect
# -Web-DAV-Publishing, IIS-WebDAV
# Web-Health, IIS-HealthAndDiagnostics
# Web-Http-Logging, IIS-HttpLogging
# Web-Custom-Logging, IIS-CustomLogging
# Web-Log-Libraries, IIS-LoggingLibraries
# -Web-ODBC-Logging, IIS-ODBCLogging
# Web-Request-Monitor, IIS-RequestMonitor
# Web-Http-Tracing, IIS-HttpTracing
# Web-Performance, IIS-Performance
# Web-Stat-Compression, IIS-HttpCompressionStatic
# Web-Dyn-Compression, IIS-HttpCompressionDynamic
# Web-Security, IIS-Security
# Web-Filtering, IIS-RequestFiltering
# -Web-Basic-Auth, IIS-BasicAuthentication
# -Web-CertProvider, IIS-CertProvider
# -Web-Client-Auth, IIS-ClientCertificateMappingAuthentication
# -Web-Digest-Auth, IIS-DigestAuthentication
# -Web-Cert-Auth, IIS-IISCertificateMappingAuthentication
# -Web-IP-Security, IIS-IPSecurity
# -Web-Url-Auth, IIS-URLAuthorization
# -Web-Windows-Auth, IIS-WindowsAuthentication
# Web-App-Dev, IIS-ApplicationDevelopment
# -Web-Net-Ext, IIS-NetFxExtensibility
# Web-Net-Ext45, IIS-NetFxExtensibility45
# Web-AppInit, IIS-ApplicationInit
# -Web-ASP, IIS-ASP
# -Web-Asp-Net, IIS-ASPNET
# Web-Asp-Net45, IIS-ASPNET45
# -Web-CGI, IIS-CGI
# Web-ISAPI-Ext, IIS-ISAPIExtensions
# Web-ISAPI-Filter, IIS-ISAPIFilter
# -Web-Includes, IIS-ServerSideIncludes
# -Web-WebSockets, IIS-WebSockets
# -Web-Ftp-Server, IIS-FTPServer
# -Web-Ftp-Service, IIS-FTPSvc
# -Web-Ftp-Ext, IIS-FTPExtensibility
# -Web-WHC, IIS-HostableWebCore
# Web-Mgmt-Tools, IIS-WebServerManagementTools
# Web-Mgmt-Console, IIS-ManagementConsole
# -Web-Mgmt-Compat, IIS-IIS6ManagementCompatibility
# -Web-Metabase, IIS-Metabase
# -Web-Lgcy-Mgmt-Console, IIS-LegacySnapIn
# -Web-Lgcy-Scripting, IIS-LegacyScripts
# -Web-WMI, IIS-WMICompatibility
# Web-Scripting-Tools, IIS-ManagementScriptingTools
# Web-Mgmt-Service, IIS-ManagementService