<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="resources/lib/bower_components/bootstrap/dist/css/bootswatch/bootstrap.min.css">
    <link rel="stylesheet" href="resources/lib/css/site.css">
    <title>Login</title>
</head>
<body>
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3"
            <c:if test="${param.error != null}">
                <div class="errorMarginTop">
                    <div class="alert alert-dismissible alert-danger">
                        <h4 class="text-center">Invalid username or password. Try again!</h4>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <div class="well spacer">
                <form class="form-horizontal" action="login" name="f" method="post">
                    <fieldset>
                        <legend>Login</legend>
                        <div class="form-group">
                            <label for="inputUsername" class="col-lg-2 control-label">Username</label>
                            <div class="col-lg-10">
                                <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-10">
                                <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <a href="/" class="btn btn-danger">Back</a>
                                <button type="submit" class="btn btn-primary pull-right clearBtn">Submit</button>
                                <button type="reset" class="btn btn-default pull-right">Clear</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
