//import 'dart:io';

void main(){
  //imprimeNumero();
  //listaNomes();
  acharLetra();
}


void imprimeNumero() {
  for (var i = 1; i <=5; i++){
    print(i);
  }
}

void listaNomes(){
  List<String> nomes = <String>["Ana", "João", "Maria"];
  for (String nome in nomes){
    print("Nome: $nome");
  }

}

void acharLetra(){
  String texto = "Parou! Este código não continua.";
  int i = 0;

  do {
    print(texto[i]);
    i++;

  } while (texto[i-1] != '!' && i < texto.length);
}


