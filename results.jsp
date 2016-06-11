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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results JSP Page</title>
    </head>
    <body>
        <form action ="index.jsp" method ="GET" >
            <jsp:useBean id="info" class="quiz.SubQuiz" scope="session"></jsp:useBean>
            <%
            //Array to get and store the answers for each problem
            Integer answers[] = info.getAnswers();
            //Array that will be used to store the users answers posted from index.jsp
            Integer userAnswers[] = new Integer[10];
            //Count variable to count the number of correct answers
            int count = 0;
            //Loop to pull in users entered answers compare to actual answers and print whether correct or wrong
            for (int i = 0; i < 10; i++) 
            {
                userAnswers[i] = Integer.parseInt((String) request.getParameter("text" + (i)));
                if (answers[i].equals(userAnswers[i])) 
                {
                    out.println("<br>" + info.getR1Arr(i) + "  -  " + info.getR2Arr(i) + " = "
                            + userAnswers[i] + " Correct");
                    count++;
                } 
                else 
                {
                    out.println("<br>" + info.getR1Arr(i) + "  -  " + info.getR2Arr(i) + " = "	
                            + userAnswers[i] + " Wrong");
                }
	    }
            out.println("<br>The total correct count is " + count);
            %>

        </form>
    </body>
</html>
