<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Customer Registration Form</title>
        <style>
            .error {color: crimson}
        </style>
    </head>

    <body>
    <i>Please fill out the form below, Asterisk (*) is required fields.</i>
        <br>
        <form:form action="processForm" modelAttribute="customer">
            First Name: <form:input path="firstName" ></form:input>
            <br>
            Last Name (*): <form:input path="lastName" ></form:input>
            <form:errors path="lastName" cssClass="error" ></form:errors>
            <br>
            <input type="submit" value="Submit" />
        </form:form>
    </body>
</html>