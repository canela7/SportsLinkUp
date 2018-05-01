<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
input[type=text] {
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
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
    integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
    crossorigin="anonymous">
<title>Edit Cricket Event</title>
</head>
<body>
    <div class="container">
        <div class="well">
            <form action="editCricketEvent" method="post">
                <h4>ID: ${entry.id}</h4>
                <input type="hidden" name="id" value="${entry.id}" /> <br />
                <h4>Name:</h4>
                <input type="text" name="name" value="${entry.user_name}" /> <br />
                <h4>City:</h4>
                <input type="text" name="city" value="${entry.city}" /> <br />
                <h4>Title:</h4>
                <input type="text" name="title" value="${entry.title}" /> <br />
                <h4>Date Posted:</h4>
                <input type="text" name="date_post" value="${entry.date_post}" /> <br />
                <h4>Date of Event:</h4>
                <input type="text" name="date_event" value="${entry.date_event}" />
                <br />
                <h4>Time of Event:</h4>
                <input type="text" name="event_time" value="${entry.event_time}" />
                <br />
                <h4>Number of Players:</h4>
                <input type="text" name="players" value="${entry.number_players}" />
                <br />
                <h4>Age Requirement:</h4>
                <input type="text" name="ageLimit" value="${entry.age_requirement}" />
                <br />
                <h4>Description:</h4>
                <input type="text" name="description" value="${entry.description}" />
                <br />
                <h4>Address:</h4>
                <input type="text" name="address" value="${entry.address}" /> <input
                    class="button" type="submit" name="save" value="Save" />
            </form>
        </div>
    </div>
</body>
</html>
