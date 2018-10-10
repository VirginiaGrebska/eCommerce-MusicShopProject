<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite5" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }
    void Application_Error(Object sender, EventArgs e)
    {  
        // Log all unhandled errors  
        Utilities.LogError(Server.GetLastError());
    }

</script>
