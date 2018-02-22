package Servlet;

import Controller.JobPosting;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "JobPostingServlet")
public class JobPostingServlet extends HttpServlet {

    protected void processServletRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String servletPath = request.getServletPath();
        RequestDispatcher rd = null;
        String redirectPage = "index.jsp";

        switch (servletPath) {
            case "/jobPosting":
                JobPosting jobPosting = new JobPosting();
                HashMap[] jobPostingHashMap = jobPosting.getJopPostingData();
                request.setAttribute("jobPostingHashMap", jobPostingHashMap);
                redirectPage = "jsp/JobPosting.jsp";
                break;

            default:
                redirectPage = "index.jsp";
                break;
        }

        rd = request.getRequestDispatcher(redirectPage);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processServletRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processServletRequest(request, response);
    }
}
