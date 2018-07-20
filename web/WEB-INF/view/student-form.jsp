<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Student Registration Form</title>
    </head>

    <body>
        <form:form action="processForm" modelAttribute="student">
            FirstName: <form:input path="firstName"></form:input>
            <br>
            LastName: <form:input path="lastName"></form:input>
            <br>
            Country: <form:select path="country">
                        <form:option value="CHN" label="China"></form:option>
                        <form:option value="USA" label="Uunited States"></form:option>
                        <form:option value="IDA" label="India"></form:option>
                     </form:select>
            <br>
            <input type="submit" value="Submit" />
        </form:form>
    </body>
</html>