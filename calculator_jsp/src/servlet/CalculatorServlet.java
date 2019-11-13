package servlet;

import models.Calculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "servlet.CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Integer.parseInt(request.getParameter("first_operand"));
        float secondOperand = Integer.parseInt(request.getParameter("second_operand"));
        char operator = request.getParameter("operator").charAt(0);

//        PrintWriter writer = response.getWriter();
//        writer.println("<html>");
//        writer.println("<h1>Result: </h1>");
//        try {
//            float result = Calculator.calculate(firstOperand, secondOperand, operator);
//            writer.println(firstOperand + " " + operator + " " + secondOperand + "= " + result);
//        } catch (Exception ex){
//            writer.println("Error: "+ex.getMessage());
//        }
//        writer.println("</html>");

//        request.setAttribute("firstOperand",firstOperand);
//        request.setAttribute("secondOperand",secondOperand);
//        request.setAttribute("operator",operator);
        float result = Calculator.calculate(firstOperand, secondOperand, operator);
        request.setAttribute("result", result);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
