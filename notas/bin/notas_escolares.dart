import 'dart:io';

class Aluno{
  String nome;
  List<double> notas;
   
  Aluno(this.nome, this.notas);

  double calcularMedia(){
    double soma = notas.reduce((a, b) => a + b);
    return soma / notas.length;
  }
}

void main(){
  cabecalho();
  List<Aluno> alunos = [];
  menu(alunos); 
}

Aluno registrarAluno(){

  String? nome;
  do {
    print("Digite o nome do aluno:");
    nome = stdin.readLineSync();
  } while (nome == null || nome.isEmpty);

  String? entrada;  
  List<double> notas = [];
    
  while (true){
    print("");
    print("Digite a nota do aluno ou fim para sair");
    
    entrada = stdin.readLineSync();
  
    if (entrada == "fim"){
      break;
    }

    if (entrada == null || entrada == ""){
      print("Entrada invalida");
      continue;
    }

    double? numero = double.tryParse(entrada!);

    if(numero == null) {
      print("Entrada invalida");
      continue;
    }
    
    notas.add(numero!);
  }
   
   return Aluno(nome, notas);
  }

void listaAlunosMedias(List<Aluno> alunos){
  
  for (var aluno in alunos){
    print("${aluno.nome} teve média final de ${aluno.calcularMedia()}");
  }
}

String comandosMenu(){
  print("");
  print("Escolha um comando:\n 1 - Registrar um aluno e sua nota,\n 2 - Ver a lista de todos alunos registrados e suas médias escolares,\n 3 - Sair do programa.");
  print("");

  List<String> comandos = <String>["1", "2", "3"];
  String? comando = stdin.readLineSync();

  if(comando == null || !comandos.contains(comando)){
    print("Comando inválido");
    return comandosMenu();
  }
  return comando;
}

void menu(List<Aluno> alunos){


  String comando = comandosMenu();
  print("");

  switch (comando){
    case "1":
      Aluno novoAluno = registrarAluno();
      alunos.add(novoAluno);
      menu(alunos);

    case "2":
      listaAlunosMedias(alunos);
      menu(alunos);

    case "3":
      print("Programa encerrado.");
      print("");
      break;
  }
}

void cabecalho(){
print("        ┏┓•            ┓                 ");
print("        ┗┓┓┏╋┏┓┏┳┓┏┓  ┏┫┏┓               ");
print("┏┓      ┗┛┗┛┗┗┓┛┗┗┗┻  ┗┻┗     ┏┓    ┓    ");
print("┣┫┏┏┓┏┳┓┏┓┏┓┏┓┣┓┏┓┏┳┓┏┓┏┓╋┏┓  ┣ ┏┏┏┓┃┏┓┏┓");
print("┛┗┗┗┛┛┗┗┣┛┗┻┛┗┛┗┗┻┛┗┗┗ ┛┗┗┗┛  ┗┛┛┗┗┛┗┗┻┛ ");
print("        ┛                                ");
}










// void main(){
//   List<String> nomeAlunos = [];
//   List<List<double>> notasAlunos = [];
//   registrarAluno(nomeAlunos, notasAlunos);
//   print(nomeAlunos);
//   print(notasAlunos);
// }

// void registrarAluno(List<String> nomeAlunos, List<List<double>> notasAlunos){
  
//   String? entrada;

//   do {
//     print("Digite o nome do aluno:");
//     entrada = stdin.readLineSync();
//   } while (entrada == null || entrada.isEmpty);

//   nomeAlunos.add(entrada);

//   List<double> notaDigitada = [];
    
//   while (true){
//     print("Digite a nota do aluno ou fim para sair");
//     entrada = stdin.readLineSync();
  
//     if (entrada == "fim"){
//       break;
//     }

//     if (entrada == null || entrada == ""){
//       print("Entrada invalida");
//       return;
//     }

//     double? numero = double.tryParse(entrada!);

//     if(numero == null) {
//       print("Entrada invalida");
//       return;
//     }
    
//     notaDigitada.add(numero);
//   }
//    notasAlunos.add(notaDigitada);
// }


// double calcularMedia(List<double> notaDigitada, List<List<double>> notasAlunos){
//   //for (var i = 0; i < notasAlunos.length; i++)
//   int i= 0;

//   do {
//     double soma = notaDigitada.reduce((a, b) => a + b);
  
//   } while (i < notaAlunos.length);  
  
//   return soma / notaDigitada.length;
// }


// void getNome(List<String> nomeAlunos){
//   print("Digite o nome do aluno");
//   String? entrada = stdin.readLineSync();
//   if(entrada == null || entrada.isEmpty) {
//     print("Entrada inválida");
//     getNome(nomeAlunos);
//   }
//   nomeAlunos.add(entrada!);
// }

// void getNota(List<List<double>> notasAlunos){

//   List<double> notaDigitada = [];
    
//   while (true){
//     print("Digite a nota do aluno ou fim para sair");
//     String? entrada = stdin.readLineSync();
  
//     if (entrada == "fim"){
//       break;
//     }

//     if (entrada == null || entrada == ""){
//       print("Entrada invalida");
//       getNota(notasAlunos);
//       return;
//     }

//     double? numero = double.tryParse(entrada!);

//     if(numero == null) {
//       print("Entrada invalida");
//       getNota(notasAlunos);
//       return;
//     }
    
//     notaDigitada.add(numero);
//   }
//    notasAlunos.add(notaDigitada);
// }

// void registrarAluno(List<String> nomeAlunos, List<List<double>> notasAlunos){
  
//   getNome(nomeAlunos);
//   getNota(notasAlunos);

// }




