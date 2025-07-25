// void main(){
// acessarReceitas();

// }
// acessarReceitas(){
//   String url = "https://gist.githubusercontent.com/mhlacerda/e393e539b61984cbf39e1f886848d4c6/raw/0d434e4e3665bd423e5291aae0f8ee1ebb7e9ce4/recipes.json";
//   get(Uri.parse(url)).then((value) => print(value.body));
// }

import 'package:http/http.dart';
import 'dart:convert';

Future buscarLivro() async{
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listaLivros = json.decode(response.body);

  Set<String> listaAutores = {};
  for (var i = 0; i < listaLivros.length; i++ ){
     listaAutores.add(listaLivros[i]["author"]);
  }

  for (String autor in listaAutores){
    buscarLivroPorAutor(listaLivros, autor);
    print("");
  }
}

void printLivros(List<dynamic> livros){
  if(livros.length <= 1){
   print("O livro do ${livros.first["author"]} é:");
  }else{  
    print("Os livros do ${livros.first["author"]} são:");
  }
  for (var livro in livros){
   print(livro["title"]);
}
}

void buscarLivroPorAutor(List<dynamic> listaLivros, String autor){

  List<dynamic> livrosFiltrados = listaLivros.where((element) => element["author"] == autor).toList();

  printLivros(livrosFiltrados);
}


void main(){
  buscarLivro().then((value) => print("A bsuca de livros terminou"),);

}

