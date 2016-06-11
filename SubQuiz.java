/*
 *Class: CMIS440 6980 Advanced Programming in Java (2145)
 *Student Name: Adam Abbott
 *Instructor: Dr. Alla Webb
 *Assignment #: Project 1
 *Description: Develop and implement the “Subtraction Quiz” Web application using 
 *Model 1 architecture. Write a JSP program that generates subtraction quizzes 
 *randomly.  The first number must always be greater than or equal to the second 
 *number. After the user answers all questions, the JSP displays the result.
 *Due Date :6/22/2014
 *I pledge that I have completed the programming assignment independently.
 *I have not copied the code from a student or any source.
 *I have not given my code to any student.
 *Sign here: Adam R Abbott
 *Additional Comments:It is assumed that the intent of this project is to create
 *a JavaBean that can be called into the JSP, from there random numbers can be
 *set for the Beans value.  One JSP will be used to display the quiz and another
 *will be used to display result.
 */
package quiz;

import java.util.Random;

/**
 *a Java Bean that sets up all the methods for the random numbers and creates the subtraction problem.
 * @author 
 */
public class SubQuiz {

    private Integer r1[] = new Integer[10];
    private Integer r2[] = new Integer[10];
    private Integer ans[] = new Integer[10];
   

    public Integer[] getAnswers() {
        return ans;
    }

    public int getR1Arr(int index) {
        return r1[index];
    }

    public int getR2Arr(int index) {
        return r2[index];
    }

    public void subProb() {
        Random rand = new Random();

        for (int i = 0; i < 10; i++) {

            //random number between 1-100
            r1[i] = rand.nextInt(100) + 1;
            //random number between 1-r1[i] so as to ensure r1 is always greater than r2
            r2[i] = rand.nextInt(r1[i]) + 1;
            ans[i] = r1[i] - r2[i];

        }
    }
}