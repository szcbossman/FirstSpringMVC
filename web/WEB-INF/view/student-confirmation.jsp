<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Student Confirmation</title>
    </head>

    <body>
        the Student is confirmed: ${student.firstName} ${student.lastName}
        <br>
        Country of Citizenship: ${student.country}
        <br>
        Favorite Programming Language: ${student.favoriteLanguage}
        <br>
        Operating Systems:
        <ul>
            <c:forEach var="OS" items="${student.operatingSystems}">
            <li>${OS}</li>
            </c:forEach>
        </ul>
    </body>
</html>