package controller;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

@WebServlet({"*.action","/"})
public class Servlet extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                       HttpServletResponse res){
        
        String path = req.getServletPath();
        ServletContext sc = req.getServletContext(); 
          
        switch (path){
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/home.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            case "/receita":
                try{
                    sc.getRequestDispatcher("/jsp/receita.jsp").forward(req, res);
                } catch (Exception e){}
                break;
            case "/ingrediente":
                try{
                    sc.getRequestDispatcher("/jsp/ingrediente.jsp").forward(req, res);
                } catch (Exception e){}
                break;
            case "/listaReceita":
                try{
                    sc.getRequestDispatcher("/jsp/receList.jsp").forward(req, res);
                } catch (Exception e){}
                break;
            case "/listaIngrediente":
                try{
                    sc.getRequestDispatcher("/jsp/ingredList.jsp").forward(req, res);
                } catch (Exception e){}
                break;
                          
        }
        
    }  

    @Override
    public void doPost(HttpServletRequest req,
                       HttpServletResponse res) {
        String path = req.getServletPath();
        switch (path) {
            case "/receita":
                try {
                    
                    res.sendRedirect("/Home/");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
                break;
            case "/ingrediente":
                try {
                    res.sendRedirect("/Home/");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
                break;
            case "/listaIngrediente":
                try {
                    
                    res.sendRedirect("/Home/");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
                break;
            case "/listaReceita":
                try {
                    res.sendRedirect("/Home/");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
                break;
        }
    }
}