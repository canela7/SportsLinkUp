<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>

input[type=text]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}




table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}


#myTABLE {
    width: 100%;
}

.button {
    background-color: blue;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edit Soccer</title>
</head>
<body>
<table  cellpadding="2" cellspacing="2" ><tbody>

<form action="EditSoccer" method="post">
	 
		 <input type="hidden" name="id" value="${entry.id}"/></td></tr>
		
		<tr><td>City: <td><input type="text" name="editcity" value="${entry.city}"/></td></td></tr>
		<tr><td>Zip-code: <td><input type="text" name="zipcode" value="${entry.zipcode}"/></td></td></tr>
		<tr><td>Date of Event: <td><input type="text" name="dateofEvent" value="${entry.date_event}"/></td></td></tr>
		<tr><td>Title: <td><input type="text" name="title" value="${entry.title}"/></td></td></tr>
		<tr><td>Number of Players: <td><input type="text" name="numberOfSoccerPlayers" value="${entry.number_players}"/></td></td></tr>
		<tr><td>Age Requierment: <td><input type="text" name="ageLimitSoccer" value="${entry.age_requiement}"/></td></td></tr>
		<tr><td>Description: <td><input type="text" name="soccerDescription" value="${entry.description}"/></td></td></tr>
		<tr><td>Address: <td><input type="text" name="parkAddress" value="${entry.addresss}"/></td></td></tr>
		
		
<tr><td colspan="2" rowspan="1"><input class="button" type="submit" name="save" value="Save" /></td></tr>
		
	
</form>
</tbody></table>
</body>
</html>