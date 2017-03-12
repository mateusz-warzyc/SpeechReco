<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="resources/lib/bower_components/bootstrap/dist/css/bootswatch/bootstrap.min.css">
    <link rel="stylesheet" href="resources/lib/css/site.css">
    <title>Register</title>
</head>
<body>
<div class="row">
    <div class="col-lg-6 col-lg-offset-3">
        <div class="well spacer">
            <form class="form-horizontal" modelAttribute="user" enctype="utf8" method="POST">
                <fieldset>
                    <legend>Register new user</legend>
                    <div class="form-group">
                        <label for="firstName" class="col-lg-2 control-label">First name</label>
                        <div class="col-lg-10">
                            <form:input path="firstName" value="" class="form-control" id="firstName" placeholder="First name"/>
                        </div>
                            <form:errors path="firstName" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <form:input  type="text" name="lastName" path="lastName" value="" class="form-control" id="lastName" placeholder="Last Name" />
                        </div>
                            <form:errors path="lastName" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <form:input  type="text" name="email" path="email" vaule="" class="form-control" id="email" placeholder="Email" />
                        </div>
                            <form:errors path="email" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-lg-2 control-label">Password</label>
                        <div class="col-lg-10">
                            <form:input  type="password" name="password" path="password" vaule="" class="form-control" id="password" placeholder="Password" />
                        </div>
                        <form:errors path="password" element="div" />
                    </div>
                    <div class="form-group">
                        <label for="matchingPassword" class="col-lg-2 control-label">Confirm Password</label>
                        <div class="col-lg-10">
                            <form:input  type="password" name="matchingPassword" path="matchingPassword" vaule="" class="form-control" id="matchingPassword" placeholder="Confirm Password" />
                        </div>
                        <form:errors path="matchingPassword" element="div" />
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
