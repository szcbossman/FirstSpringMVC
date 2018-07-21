<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Customer Confirmation</title>
    </head>

    <body>
        The Customer is Confirmed: ${customer.firstName} ${customer.lastName}
        <br>
        Free Passes had: ${customer.freePasses}
        <br>
        Postal Code is: ${customer.postalCode}
    </body>
</html>