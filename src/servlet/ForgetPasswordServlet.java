package servlet;

import dao.ReaderDao;
import utils.FindReaderPassword;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ForgetPasswordServlet")
public class ForgetPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = (String) request.getAttribute("account");
        ReaderDao readerDao = new ReaderDao();
        String Email = readerDao.getEmailByAccount(account);
        FindReaderPassword.findPassword(Email,request);
        response.sendRedirect("index.jsp?forget=yes");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}