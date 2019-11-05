<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHomePage.aspx.cs" Inherits="DoctorOfficeApplication.adminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script type="text/javascript" src="JavaScript.js"></script>
</head>
<body>
    <header>
        <div>
            <ul id="nav">
                <li class="nav-links"><a href="adminHomePage.aspx">Home</a></li>
                <li class="nav-links"><a href="index.aspx">Logout</a></li>
            </ul>
        </div>
    </header>
    <main>
        <section id="dashboard">
            <h1>Welcome To Your DashBoard</h1>
            <%--Content that changes goes here--%>

        </section>
        <aside id="side-nav">
            <ul>
                <li class="side-nav-links" >
                    <a href="#" onclick="open_client_sub_links()">Clients</a>
                    <ul class="side-nav-sub-links" id="clients">
                        <li>
                            <a>Add Client</a>
                        </li>
                        <li>
                            <a>Edit Client Information</a>
                        </li>
                        <li>
                            <a>Delete Client </a>
                        </li>
                    </ul>
                </li>
                <li  class="side-nav-links" >
                    <a href="#" onclick="open_app_sub_links()">Appointments</a>
                    <ul class="side-nav-sub-links" id="app">
                        <li>
                            <a>Check Appointments</a>
                        </li>
                        <li>
                            <a>Edit Appointments</a>
                        </li>
                        <li>
                            <a>Add Appointments</a>
                        </li>
                    </ul>
                </li>
            </ul>
            
        </aside>
    </main>
</body>
</html>
