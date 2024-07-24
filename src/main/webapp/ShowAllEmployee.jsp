<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show All Employees</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
			    		
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #9bb0fa;
        }
    </style>
</head>
<body>
    <h1>All Employees</h1>
    <form action = 'showAllEmployees' >
    <table>
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Gender</th>
                <th>City</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty employees}">
                    <c:forEach items="${employees}" var="employee">
                        <tr>
                            <td><c:out value="${employee.emp_id}" /></td>
                            <td><c:out value="${employee.name}" /></td>
                            <td><c:out value="${employee.email_id}" /></td>
                            <td><c:out value="${employee.mob_no}" /></td>
                            <td><c:out value="${employee.gender}" /></td>
                            <td><c:out value="${employee.city}" /></td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="6">No employees found</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    </form>
</body>
</html>