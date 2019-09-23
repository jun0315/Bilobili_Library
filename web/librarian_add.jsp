<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page import="entity.Librarian" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <!-- Search Box-->
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="What are you looking for..." class="form-control">
                </form>
            </div>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>Bilobili </span><strong>Library</strong>
                        </div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                    </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Logout    -->
                        <li class="nav-item"><a href="logout" class="nav-link logout"> <span
                                class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">
                        <%
                            String account = (String) session.getAttribute("name");
                            out.println(account);
                        %>
                    </h1>
                </div>
            </div>
            <%--            <!-- Sidebar Navidation Menus--><span class="heading">Main</span>--%>
            <ul class="list-unstyled">
                <li><a href="#LibrarianManage" aria-expanded="true" data-toggle="collapse"> <i
                        class="icon-interface-windows"></i>Librarian Manage</a>
                    <ul id="LibrarianManage" class="collapse list-unstyled show">
                        <li><a href="LibrarianListPage">Librarian List</a></li>
                        <li><a href="librarian_add.jsp">Librarian Add</a></li>
                    </ul>
                </li>
                <li><a href="#ReaderRule" aria-expanded="false" data-toggle="collapse"> <i
                        class="icon-interface-windows"></i>Reader Rule</a>
                    <ul id="ReaderRule" class="collapse list-unstyled ">
                        <li><a href="#">Rule List</a></li>
                        <li><a href="#">Rule Edit</a></li>
                        <li><a href="#">Rule Add</a></li>
                    </ul>
                </li>
                <li><a href="#AccountManage" aria-expanded="false" data-toggle="collapse"> <i
                        class="icon-interface-windows"></i>Account Manage</a>
                    <ul id="AccountManage" class="collapse list-unstyled ">
                        <li><a href="#">Account Information</a></li>
                        <li><a href="#">Reset Password</a></li>
                    </ul>
                </li>

                <%--                <li class="active"><a href="admin.jsp"> <i class="icon-home"></i>Home </a></li>--%>

                <%--                <li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>--%>
                <%--                <li><a href="charts.html"> <i class="fa fa-bar-chart"></i>Charts </a></li>--%>
                <%--                <li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>--%>
                <%--                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i--%>
                <%--                        class="icon-interface-windows"></i>Example dropdown </a>--%>
                <%--                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">--%>
                <%--                        <li><a href="#">Page</a></li>--%>
                <%--                        <li><a href="#">Page</a></li>--%>
                <%--                        <li><a href="#">Page</a></li>--%>
                <%--                    </ul>--%>
                <%--                </li>--%>
                <%--                <li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>--%>
                <%--            </ul>--%>

                <%--            <span class="heading">Extras</span>--%>
                <%--            <ul class="list-unstyled">--%>
                <%--                <li><a href="#"> <i class="icon-flask"></i>Demo </a></li>--%>
                <%--                <li><a href="#"> <i class="icon-screen"></i>Demo </a></li>--%>
                <%--                <li><a href="#"> <i class="icon-mail"></i>Demo </a></li>--%>
                <%--                <li><a href="#"> <i class="icon-picture"></i>Demo </a></li>--%>
                <%--            </ul>--%>

        </nav>
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">Librarian Add</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admin.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Librarian Add</li>
                </ul>
            </div>
            <section class="tables">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <p>Sign up for a new librarian.</p>
                            <form class="form-horizontal" action="librarian_add.do" method="post">
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">Account</label>
                                    <div class="col-sm-9">
                                        <input id="inputHorizontalSuccess" name="account"
                                               class="form-control form-control-success">
                                        <%--                                        <small class="form-text">Example help text that remains unchanged.</small>--%>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">Password</label>
                                    <div class="col-sm-9">
                                        <input id="inputHorizontalWarning" name="password" value="00010001"
                                               class="form-control form-control-warning">
                                        <%--                                        <small class="form-text">Example help text that remains unchanged.</small>--%>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">Name</label>
                                    <div class="col-sm-9">
                                        <input id="inputHorizontalWarning" name="name"
                                               class="form-control form-control-warning">
                                        <%--                                        <small class="form-text">Example help text that remains unchanged.</small>--%>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">Phone</label>
                                    <div class="col-sm-9">
                                        <input id="inputHorizontalWarning" name="phone"
                                               class="form-control form-control-warning">
                                        <%--                                        <small class="form-text">Example help text that remains unchanged.</small>--%>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-9 offset-sm-3">
                                        <input type="submit" value="Signin" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <%--                <div class="container-fluid">--%>
                <%--                    <div class="row">--%>
                <%--                        <div class="col-lg-12">--%>
                <%--                            <div class="card">--%>
                <%--                                <div class="card-body">--%>
                <%--                                    <div class="table-responsive">--%>
                <%--                                        <table class="table">--%>
                <%--                                            <thead>--%>
                <%--                                            <tr>--%>
                <%--                                                <th>#</th>--%>
                <%--                                                <th>Account</th>--%>
                <%--                                                <th>Name</th>--%>
                <%--                                                <th>Phone</th>--%>
                <%--                                            </tr>--%>
                <%--                                            </thead>--%>
                <%--                                            <tbody>--%>
                <%--                                            <%List<Librarian> librarians = (List<Librarian>) request.getAttribute("librarians");%>--%>
                <%--                                            <%int i = 0;%>--%>
                <%--                                            <c:forEach items="${librarians}" var="librarian" varStatus="li">--%>
                <%--                                                <% i++;%>--%>
                <%--                                                <tr>--%>
                <%--                                                    <th>${i}</th>--%>
                <%--                                                    <td>${librarian.getAccount()}</td>--%>
                <%--                                                    <td>${librarian.getName()}</td>--%>
                <%--                                                    <td>${librarian.getPhone()}</td>--%>
                <%--                                                </tr>--%>
                <%--                                            </c:forEach>--%>
                <%--                                            </tbody>--%>
                <%--                                        </table>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </section>
            <!-- Page Footer-->
            <footer class="main-footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>Copyright &copy; 2019.Company name All rights reserved.More Templates test</p>
                        </div>
                        <div class="col-sm-6 text-right">
                            <p></p>
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
<script>
    var info = '<%=request.getParameter("info")%>';
    if (info == 'success') {
        alert("successfully add!");
    }else if(info == 'error'){
        alert("add failure because of have the same account!");
    }
</script>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>
</html>