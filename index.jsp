<%--Class: CMIS440 6980 Advanced Programming in Java (2145)
    Student Name: Adam Abbott
    Instructor: Dr. Alla Webb
    Assignment #: Project 1
    Description: Develop and implement the “Subtraction Quiz” Web application using 
    Model 1 architecture. Write a JSP program that generates subtraction quizzes 
    randomly.  The first number must always be greater than or equal to the second 
    number. After the user answers all questions, the JSP displays the result.
    Due Date :6/22/2014
    I pledge that I have completed the programming assignment independently.
    I have not copied the code from a student or any source.
    I have not given my code to any student.
    Sign here: Adam R Abbott
    Additional Comments:It is assumed that the intent of this project is to create
    a JavaBean that can be called into the JSP, from there random numbers can be
    set for the Beans value.  One JSP will be used to display the quiz and another
    will be used to display result.
--%>

<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Quiz JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="info" class="quiz.SubQuiz" scope="session"></jsp:useBean>
        <form method="post" action="results.jsp">
            <%
            //This runs the instance in the Bean to generate the random numbers 
            //and assign them to the (r1/r2) variables)
            info.subProb();
            for (int i = 0; i < 10; i++)
            {
                out.println("<br>" + info.getR1Arr(i) + "  - "
                        + info.getR2Arr(i) + " = <input type = 'text' name = 'text"
                        + (i) + "' size = 3>");
            }
            %><br><input type="submit" value="Submit"> 
            Click the browser's refresh button to get a new quiz.
        </form>
    </body>
</html>