<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html id="srAppRoot">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="../resources/lib/bower_components/bootstrap/dist/css/bootswatch/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/lib/css/site.css">
    <base href="/">
    <title>SpeechRecognizer</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron jumbotron_no_margin">
            <h1>${appName}</h1>
            <p>${author}</p>
        </div>
    </div>

    <div class="container">
        <%--<div ng-include="'../resources/menu.html'"></div>--%>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" ui-sref="index">SR</a>
                    </div>

                    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-2" aria-expanded="false" style="height: 1px;">
                        <ul class="nav navbar-nav">
                            <li><a ui-sref="recognize">Translate</a></li>
                            <li><a ui-sref="myList">My List</a></li>
                            <li><a ui-sref="">Compare Results</a></li>
                            <li><a ui-sref="">About</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <sec:authorize access="isAuthenticated()">
                                <li><a>Logged as: <sec:authentication property="name"/></a></li>
                                <li><a href="<c:url value="/logout" />">Logout</a></li>
                            </sec:authorize>
                            <sec:authorize access="isAnonymous()">
                                <li><a href="<c:url value='/login' />">Login</a></li>
                                <li><a href="">Register</a></li>
                            </sec:authorize>
                        </ul>
                    </div>
                </div>
            </nav>
        <ui-view></ui-view>
    </div>

    <div class="container">
        <div ng-include="'../resources/footer.html'"></div>
    </div>

    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/angular/angular.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/angular-ui-router/release/angular-ui-router.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/angular-resource/angular-resource.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/lib/bower_components/ui-bootstrap/ui-bootstrap-tpls-2.3.0.min.js"></script>

    <script type="text/javascript" charset="utf-8" src="../resources/common/module.js"></script>

    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/module.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/views/index/index.controller.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/views/recognize/recognize.controller.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/views/myList/myList.controller.js"></script>

    <script type="text/javascript" charset="utf-8" src="../resources/dependencies.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/angularBoot.js"></script>
</body>
</html>