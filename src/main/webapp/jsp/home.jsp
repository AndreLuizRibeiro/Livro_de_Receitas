<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Ingrediente" %>
<!doctype html>
<html lang>
  <head>
    <meta charset = "UTF-8">
    <title>Pagina Inicial</title>

    <style type="text/css">
      #a {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-size: 25px;
      color: rgb(5, 10, 78);
      border: solid;
      background-color:rgb(207, 211, 231);
      padding: 1px;
      margin: 1px;
      text-align: center;
    }
    #b{
      font-size: 20px;
     
      width: 100%;
      text-align: center;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-size: 20px;;
      color: rgb(5, 10, 78);
      border: solid;  
      background-color:rgb(207, 211, 231);
     
    }
    #c{
      font-size: 30px;
     
      
     
    }
    </style>
      
  </head>
  
  <body >
    <div >
  <header >
    <div >
      <nav id="a">
        
        <h3>Sistema Web - Livro de Receitas</h3>
      </nav>
    </div>
  </header>
  <div id="b">
    <p >
      <a href="/Home/ingrediente"><button id="c">Cadastrar Ingredientes</button></a>
      <a href="/Home/listaIngrediente"><button id="c" >Visualizar Ingredientes</button></a>
    </p>  
    <p >
      <a href="/Home/receita"><button id="c">Cadastrar Receitas</button></a>
      <a href="/Home/listaReceita"><button id="c">Visualizar Receitas</button></a>
    </p>
    </div>
    
  </body>
</html>
