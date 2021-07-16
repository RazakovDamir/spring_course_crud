<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>

<body>

<h2>All Users</h2>

<table border="1" style="width:300px">

    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="usr" items="${allUsrs}">

        <c:url var = "updateButton" value="/updateInfo">
            <c:param name="usrId" value="${usr.id}"/>
        </c:url>

        <c:url var = "deleteButton" value="/deleteUser">
            <c:param name="usrId" value="${usr.id}"/>
        </c:url>

        <tr>
            <td>${usr.name}</td>
            <td>${usr.surname}</td>
            <td>${usr.department}</td>
            <td>${usr.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'">
                <br>
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>

</table>

<br>

<input type="button" value="Add" onclick="window.location.href = 'addNewUser'"/>


</body>

</html>