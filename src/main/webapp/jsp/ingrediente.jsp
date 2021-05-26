<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Ingrediente" %>
<!doctype html>
<html lang="pt-br">
  <head>
    
    <title>Criar ingrediente</title>
    <style type="text/css">
      #a {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-size: 30px;;
      color: rgb(5, 10, 78);
      border: solid;
      background-color:rgb(207, 211, 231);
      padding: 1px;
      margin: 1px;
      text-align: center;
    }
    #b{
      font-size: 20px;
      text-align: center;
     
    }
    #c{
      font-size: 20px;
      text-align: center;
    }
    #e{
      border: solid;
      text-align: center;
      width: 100%;
      text-align: center;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-size: 15px;;
      color: rgb(5, 10, 78);
      border: solid;  
      background-color:rgb(207, 211, 231);
    }
    </style>
    
    
  </head>
  <body >
    <div >
  
      <nav id ="a">
        <h3 >Cadastrar Ingredientes</h3></nav>
      
  <main id ="e">
    
    
    <form method="post">
      <label for="nomeIng">Nome do Ingrediente:</label>
      <input type="text" id="nomeIng" name="nome"><br><br>
      <button type="submit" value="Submit">Cadastrar</button>
      
    </form>
    
    <div id ="c"><h3 >Ingredientes já Cadastrados</h3> <%
      List<Ingrediente> ingredientes = (List<Ingrediente>) request.getAttribute("ingredientes");
        for(Ingrediente ingrediente: ingredientes){   
            out.print("<td/>"+ingrediente.getNome()+" , ");
              
        } 		
      %></div>
  </main>
  <a href="/Home/"><button >Voltar</button></a>
    
</div>
</body>
</html>