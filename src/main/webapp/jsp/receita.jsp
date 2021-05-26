<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Ingrediente" %>
<%@page import="model.Receita" %>
<!doctype html>
<html lang="pt-br">
  <head>
    <title>Criar receita</title>

    <style type="text/css">
      #a {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-size: 30px;
      color: rgb(5, 10, 78);
      border: solid;
      background-color:rgb(207, 211, 231);
      padding: 1px;
      margin: 1px;
      text-align: center;
      
      
    }
    #b{
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
        <h3 >Cadastrar Receita</h3></nav>
  <main id= "b">
    
    
    <form method="post">
      <br><br><label for="nomeReceita">Nome da Receita:</label>
      <input type="text" id="nomeReceita" name="nome"><br><br>
      <label for="medida">Quandidade do ingrediente |</label>
      <label for="medida">Ingrediente</label>
      <a href="#" id="filldetails" onclick="javascript:addIngrediente()">Adicionar ingrediente</a>
      <div id="container"/></div><br><br>
      <label for="passoRceita">Passos da Receita:</label>
      <textarea type="text" id="passoRceita" name="passo" rows="5" cols="70" > </textarea><br><br>
      <label for="rendimentoReceita">Rendimento da Receita:</label>
      <select type="text" id="rendimento" name="rendimento">
        <option >1 Pessoa</option>
        <option >2 Pessoas</option>
        <option >3 Pessoas</option>
        <option >5 Pessoas</option>
        <option >8 Pessoas</option>
        <option >12 Pessoas</option>
        <option >16 Pessoas</option>
        <option >2o Pessoas</option>
    </select><br><br>
      <label for="tempoPreparo">Tempo de Preparo:</label>
      <input type="text" id="tempoPreparo" name="tempo"><br><br>
      <button type="submit" value="Submit">Cadastrar</button>

      
        <input type="hidden" id="countItem" name="countItem"/>
        <script type="text/javascript">
          var countItem = 0
          addIngrediente = function(){
          var container = document.getElementById("container");
          var input = document.createElement("input");
          input.type = "text";
          input.id="medida"+ countItem;
          input.name = "medida"+ countItem;
          container.appendChild(input);
          var selectList = document.createElement("select");
          selectList.id = "ingrediente"+ countItem;
          selectList.name = "ingrediente"+ countItem;
          container.appendChild(selectList);
          var arrayOb = new Array();
          <%
              List<Ingrediente> ingredientes = (List<Ingrediente>) request.getAttribute("ingredientes");
              for (int i=0;i < ingredientes.size();i++) {
          %>
                arrayOb[<%= i %>]={id:<%= ingredientes.get(i).getId() %>, nome: '<%= ingredientes.get(i).getNome() %>'};
          <% } %>
            console.log(arrayOb);
            for (var i = 0; i < arrayOb.length; i++) {
              var option = document.createElement("option");
              option.value = arrayOb[i].id;
              option.text = arrayOb[i].nome;
              selectList.appendChild(option);
          }
          container.appendChild(document.createElement("br"));
          countItem += 1
          document.getElementById('countItem').value = countItem;
          console.log(countItem);
        }
    </script>
    
    <input type="hidden" id="count" name="count"/>
    
    </form>
    
     </main>
     
     <a href="/Home/"><button >Voltar</button></a>
</div>
</body>
</html>
