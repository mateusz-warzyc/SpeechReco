<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div ng-include="'../resources/menu.html'"></div>
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