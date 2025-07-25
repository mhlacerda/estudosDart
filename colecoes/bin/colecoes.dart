// void main(){
  
//   void verificarTarefas(){
//     List<String> tarefas = <String>["mercado", "estudar", "ligar mecanico"];


//     print("Você tem as seguintes tarefas:");
//     print("");
//     for (var tarefa in tarefas){
//       print(tarefa);
//     }
//   }

//   verificarTarefas();
// }


// Este é apenas um exemplo, os valores que a lista possui podem variar. 

// void main (){
//   List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];

//   void exibirPares(){
//     idsFuncionarios.where((id) => id % 2 == 0).forEach(print);

//   //   for (int id in idsFuncionarios){
//   //     if (id % 2 == 0){
//   //       print(id);
//   //     }
//   //   }
//   }
//   exibirPares();
// }



// Este é apenas um exemplo, os valores que a lista possui podem variar. 
// void main(){
//   List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"]; 

//   int quantidade = produtos.where((item) => item == "maçã").length;
//   print(quantidade);
//   }



// Este é apenas um exemplo, os valores que as listas possuem podem variar. 
// void main(){
// List<String> carrinho = ["arroz", "feijão", "leite"]; 

// List<String> visitados = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

//   for (String produto in visitados){
//     if (!carrinho.contains(produto)){
//       print(produto);
//     }
//   }
// }


// void main(){
//   Set<int> codigosDisponiveis = {1, 50, 87, 90, 6, 7, 13};

//   int codigo = 6;
//   int codigo1 = 14;

//   if (codigosDisponiveis.contains(codigo)){
//     print("true");
//   } else{print("false");}
//   if (codigosDisponiveis.contains(codigo1)){
//     print("true");
//   } else{print("false");}
// }


// void main(){

// Set<int> produtosSemana = {1, 2, 3, 4};   

// Set<int> produtosMes = {3, 4, 5, 6};  

// Set<int> resultado = {};


//   for (int produto in produtosSemana){
//     resultado.add(produto);
//     }
//   for (int produto in produtosMes){
//     resultado.add(produto);
//   }
  
//   print(resultado); // set não repete itens



//   Set<int> uniao = produtosMes.union(produtosSemana);
//   print (uniao);
// }

// Este é apenas um exemplo, os valores que as listas possuem podem variar. 
// void main(){
// Set<String> vendidos = {"arroz", "feijão", "leite"}; 

// Set<String> estoque = {"arroz", "feijão", "macarrão", "leite", "açúcar"}; 

//   // for (String produto in estoque){
//   //   if (!vendidos.contains(produto)){
//   //     print(produto);
//   //   }
//   // }

//     Set<String> diferenca = estoque.difference(vendidos);
//       print(diferenca);
// }

// void main(){

// Map<String, double> precosProdutos = { 

//   "Camiseta": 30.0, 

//   "Calça": 50.0, 

//   "Boné": 15.0, 

//   "Tênis": 120.0 

// };

// double total = 0;
// for (double preco in precosProdutos.values){
//   total += preco; 
//   print(total);
// }

// double total2 = precosProdutos.values.fold(0, (acumulador, preco) => acumulador + preco);

// print(total2);

// double total3 = precosProdutos.values.fold(1, (acumulador, preco) => acumulador * preco);
// print(total3);

// double total4 = precosProdutos.values.reduce((acumulador, preco) => acumulador + preco); // no reduce, o acumulador começa com o primeiro item da lista

// print(total4);

// }

// void main(){
  
// Map<String, double> inventarioProdutos = { 

//   "Camiseta": 30.0, 

//   "Calça": 50.0, 

//   "Boné": 15.0 

// }; 

// print(inventarioProdutos);

// inventarioProdutos.update("Camiseta", (value) => 50.0);

// print(inventarioProdutos);

// inventarioProdutos["Tenis"] = 120.0;

// print(inventarioProdutos);


// void atualizaValor(Map<String, double> inventarioProdutos, String produto, double novoValor){

// if (inventarioProdutos.containsKey(produto)){
//   inventarioProdutos.update(produto, (value) => novoValor);
//  print(inventarioProdutos);
// }else {
//   print("produto não encontrado.");
// }
// }

//   atualizaValor(inventarioProdutos, "Camiseta", 20.0);

// void adicionarProduto(Map<String, double> inventarioProdutos, String produto, double valor){

//   if(!inventarioProdutos.containsKey(produto)){
//     inventarioProdutos[produto] = valor;
//     print(inventarioProdutos);
//   }else{
//     print("Esse produto já está cadastrado.");
//   }
// }

//   adicionarProduto(inventarioProdutos, "Camisa Masculina", 100.0);
// }

void main(){
  
// Lista de mapas, onde cada mapa contém o nome e a pontuação de um cliente. 

List<Map<String, dynamic>> clientes = [ 

  {"nome": "João", "pontuacao": 6.5}, 

  {"nome": "Maria", "pontuacao": 8.7}, 

  {"nome": "Pedro", "pontuacao": 9.2}, 

  {"nome": "Ana", "pontuacao": 5.4} 

]; 

for (var cliente in clientes){
  if(cliente["pontuacao"]>7.00){
  print(cliente);
  }
}
}