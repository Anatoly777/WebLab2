package Web2.controll.servlets;

import Web2.model.ShotRequest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher;
        ShotRequest shotRequest = ShotRequest.fromHttpRequest(request);
        if (shotRequest == null){
            dispatcher = request.getRequestDispatcher("/index.jsp");
        }
        else{
            dispatcher = request.getRequestDispatcher("/shoot");
        }
        dispatcher.forward(request, response);
    }
}