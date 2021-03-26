<!doctype html>
<html lang="pt-br">
  <head>
    <title>Criar receita</title>

    <style type="text/css">
      #a {
      
      font-size: 25px;
      color: rgb(255,0,0);
      border: solid;
      background-color:rgb(0,255,255);
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
      border: solid;
      background-color:rgb(0,255,255);
    }
    </style>
   
  </head>
  <body >
    <div >
  

  <main >
    <h1 id ="a">Cadastrar Receita</h1>
    
    <form id="b" method="post">
      <label for="nomeReceita">Nome da Receita:</label>
      <input type="text" id="nomeReceita" name="nome"><br><br>
      <label for="ingredientesReceita">Ingredientes:</label>
      <select name="ingredientes">
        <Option>------</Option>
        <Option>trigo</Option>
        <Option>sal</Option>
        <Option>oleo</Option>
        <Option>fermento</Option>
      </select> 
      <label for="quantidadeIngrediente">quantidade:</label>
      <input type="text" id="quantidadeIngrediente" name="ingredientes"><button>Add</button> <label id="c" for="ingredientesReceita">Ingredientes adicionados vao aqui</label><br><br>    
      <label for="passosReceita">Modo de Preparo:</label>
      <input type="text" id="passosReceita" name="passos"><br><br>
      <button type="submit" value="Submit">Cadastrar</button>
      <button href="/Home/">Voltar</button>
    </form>
  </main>
</div>
</body>
</html>
