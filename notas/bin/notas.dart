import 'dart:io';
void main() {
  List<String> notas = <String>[];
  print("");
  cabecalho();
  menu(notas);
}

String getComando(){
  
  print("Escolha um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? comando = stdin.readLineSync();

  if(comando == null || !comandos.contains(comando)){
    print("Comando inválido");
    return getComando();
  }
  return comando;
}

List<String> adicionarNotas(List<String> notas){
  print("Escreva uma nota");
  String? nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty){
    print("Não é possivel adicionar nota vazia");
    return adicionarNotas(notas);
  }

  notas.add(nota);
  return notas;

}

void listarNotas(List<String> notas){
  print("Você tem as seguintes notas:");
  print("");
  for (var i = 0; i < notas.length; i++){
    print(notas[i]);
  }

}

void menu(List<String> notas){

  print("");
  String comando = getComando();
  print("");

  switch (comando){
    case "1":
      adicionarNotas(notas);
      menu(notas);

    case "2":
      listarNotas(notas);
      menu(notas);

    case "3":
      print("Até breve!");
  }
}

void cabecalho(){
  print("               .-'''-.                                ");
  print("              '   _    \                              ");
  print("   _..._    /   /\` '.   \                             ");
  print(" .'     '. .   |     \  '                             ");
  print(".   .-.   .|   '      |  '  .|                        ");
  print("|  '   '  |\    \     / / .' |_     __                ");
  print("|  |   |  | \`.   \` ..' /.'     | .:--.'.         _    ");
  print("|  |   |  |    '-...-'\`'--.  .-'/ |   \ |      .' |   ");
  print("|  |   |  |               |  |  \`\" __ | |     .   | / ");
  print("|  |   |  |               |  |   .'.''| |   .'.'| |// ");
  print("|  |   |  |               |  '.'/ /   | |_.'.'.-'  /  ");
  print("|  |   |  |               |   / \ \._,\ '/.'   \_.'   ");
  print("'--'   '--'               \`'-'   \`--'  \`\"             ");
}