import 'package:http/http.dart';
import 'dart:convert';


//Exercicio 2
Future filtroReceitas(List<String> meusIngredientes) async {
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json";
  Response resposta = await get(Uri.parse(url));
  List<dynamic> listaReceitas = json.decode(resposta.body);
  //print(listaReceitas);
  List<String> listaReceitasPossiveis = [];

  for (dynamic receitaDyn in listaReceitas){
    Map<String, dynamic> receita = receitaDyn as Map<String, dynamic>; // {} receita completa
    List<dynamic> listaDeIngredientes = receita["ingredients"]; // [] lista de ingredientes que está na receita
    //print(listaDeIngredientes);
    bool contemTodosIngredientes = meusIngredientes.every((ingrediente){ // SE COLOCAR O ANY AQUI, ELE FILTRA TODOS OS ITENS COM O OU.
      bool encontradoNaMinhaCozinha = false;
       for (String ingredienteDaReceita in listaDeIngredientes) { 
        // loop 2 -  para cada ingrediente (cada aspas = ex: 1 colher de chá de sal) dentrop da lista geral das receitas
        //for (String meuIngrediente in meusIngredientes){//- O EVERY FAZ ESSE FOR
        // loop 3 - para cada item da lista que criei de ingrediente
          if (ingredienteDaReceita.toLowerCase().contains(ingrediente.toLowerCase())){
            encontradoNaMinhaCozinha = true;
            break;
          }
      }
      return encontradoNaMinhaCozinha;
    });

    if(contemTodosIngredientes){
      listaReceitasPossiveis.add(receita["name"]);
    }
  
  } 
  
  for (String nomeReceita in listaReceitasPossiveis){
    print("Você pode fazer a seguinte receita: $nomeReceita");
  }
}

void main(){
  List<String> meusIngredientes = ["polvilho", "leite", "óleo", "ovos", "queijo"];//["ovo", "feijão", "frango"]; 
  filtroReceitas(meusIngredientes);
}


// List<String> getIngredientes(){
//   List<String> listaIngredientes = [];
//   String ingredientes = "";
  
//   while (true){
//     print("Quais os ingredientes que você tem na geladeira? Digite fim para sair.");
//     String? entrada = stdin.readLineSync();
//       if (entrada == "fim"){
//         break;
//       }
//       if (entrada != null && entrada != ""){
//         ingredientes = entrada;
//         listaIngredientes.add(ingredientes);
//       } else {
//         print("Entrada inválida");
//       }
//     }
//     print(listaIngredientes);
//     return listaIngredientes;
// }

