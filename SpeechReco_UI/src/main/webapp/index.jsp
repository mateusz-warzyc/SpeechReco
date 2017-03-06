<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="resources/lib/bower_components/bootstrap/dist/css/bootswatch/bootstrap.min.css">
    <link rel="stylesheet" href="resources/lib/css/site.css">
    <base href="/">
    <title>SpeechRecognizer</title>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-inverse noMarginBottom">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SpeechRecognizer</a>
                </div>
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" aria-expanded="false" style="height: 1px;">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <sec:authorize access="isAuthenticated()">
                            <li><a><p class="text-info noMarginBottom">Logged as: <sec:authentication property="name"/></p></a></li>
                            <li><a href="<c:url value="/logout" /> ">Logout</a></li>
                        </sec:authorize>
                        <sec:authorize access="isAnonymous()">
                            <li><a href="login.html">Login</a></li>
                            <li><a href="register.html">Register</a></li>
                        </sec:authorize>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="jumbotron noMarginBottom">
            <h1>SpeechRecognizer</h1>
            <p>Created by Mateusz Warzyc</p>
        </div>
    </div>
    <div class="container" id="srAppRoot">
        <div ng-include="'../resources/menu.html'"></div>
        <ui-view></ui-view>
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
    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/views/compare/compare.controller.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/recognizer/views/about/about.controller.js"></script>

    <script type="text/javascript" charset="utf-8" src="../resources/dependencies.js"></script>
    <script type="text/javascript" charset="utf-8" src="../resources/angularBoot.js"></script>
</body>
</html>