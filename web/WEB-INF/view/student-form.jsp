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
                        <form:options items="${student.countryOptions}"></form:options>
                     </form:select>
            <br>
            Favorite Language:
            Java <form:radiobutton path="favoriteLanguage" value="Java"></form:radiobutton>
            JavaScript <form:radiobutton path="favoriteLanguage" value="JavaScript"></form:radiobutton>
            Swift <form:radiobutton path="favoriteLanguage" value="Swift"></form:radiobutton>
            Go <form:radiobutton path="favoriteLanguage" value="Go"></form:radiobutton>
            <br>
            <input type="submit" value="Submit" />
        </form:form>
    </body>
</html>