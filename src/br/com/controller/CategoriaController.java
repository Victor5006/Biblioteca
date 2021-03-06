package br.com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.CategoriaDAO;
import br.com.model.Categoria;

public class CategoriaController extends HttpServlet 
{
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/cadastrarCategoria.jsp";
	private static String LIST_CATEGORIA = "/listarCategorias.jsp";
    private CategoriaDAO dao;

    public CategoriaController() 
    {
        super();
        dao = new CategoriaDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete"))
        {
            int codCategoria = Integer.parseInt(request.getParameter("codCategoria"));
            dao.delete(codCategoria);
            forward = LIST_CATEGORIA;
            request.setAttribute("categoriaList", dao.select());    
        } 
        else if (action.equalsIgnoreCase("edit"))
        {
        	int codCategoria = Integer.parseInt(request.getParameter("codCategoria"));
        	Categoria categoria = dao.selectID(codCategoria);
        	forward = INSERT_OR_EDIT;
        	request.setAttribute("categoria", categoria);
        } 
        else if (action.equalsIgnoreCase("listarCategorias"))
        {
            forward = LIST_CATEGORIA;
            request.setAttribute("categoriaList", dao.select());
        } 
        else 
        {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        Categoria categoria = new Categoria();
        categoria.setDescricao(request.getParameter("name"));

        String codCategoria = request.getParameter("codCategoria");
        
        if (codCategoria == null || codCategoria.isEmpty())
        {
            dao.insert(categoria);
        }
        else
        {
            categoria.setCodCategoria(Integer.parseInt(codCategoria));
            dao.update(categoria);
        }
        
        RequestDispatcher view = request.getRequestDispatcher(LIST_CATEGORIA);
        request.setAttribute("categoriaList", dao.select());
        view.forward(request, response);
    }
}