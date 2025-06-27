

// void main(){
//   print("Digite a idade da pessoa 1");
//   var idadeUm = double.parse(stdin.readLineSync()!);
//   print("Digite a idade da pessoa 2");
//   var idadeDois = double.parse(stdin.readLineSync()!);
//   print("Digite a idade da pessoa 3");
//   var idadeTres = double.parse(stdin.readLineSync()!);

//   double media = ((idadeUm + idadeDois + idadeTres)/3);

//   print("A media das idades é $media");
//   }



// void main (){
//   String nome = "Manuela";
//   String cpf = "100.000.000-00";
//   int idade = 44;
//   double altura = 1.68;
//   bool comunidade = false;

//   print("Eu sou $nome, \n meu cpf é $cpf, \n sou membro da comunidade? $comunidade. \n Eu tenho $altura metros de altura e \n $idade anos de idade");

// }


// void main(){
//   double valorHora = 50.00;
//   double desconto = 0.05;
//   print("Digite as horas trabalhadas");
//   double horaTrabalhada = double.parse(stdin.readLineSync()!);
//   double salarioBruto = valorHora * horaTrabalhada;
//   double salarioLiquido = salarioBruto - (salarioBruto * desconto);

//   print("O salário líquido é R\$ $salarioLiquido");
// }


// void main() {

//   double saldo = 1000.0; // Saldo inicial em reais

//   print('Boas-vindas ao seu banco digital!');
//   print('Seu saldo atual é de: R\$ ${saldo.toStringAsFixed(2)}');

//   print('Digite o valor do Pix que deseja realizar:');
//   double valorPix = double.parse(stdin.readLineSync()!);

//   saldo -= valorPix;

//   print('Pix realizado com sucesso!');
//   print('Seu saldo atual é de: R\$ ${saldo.toStringAsFixed(2)}');
// }


// void main() {
//   int pontosIniciais = 100;
//   int pontosRetirados;

//   print("Você tem $pontosIniciais pontos.");
//   print("Quantos pontos você gostaria de resgatar?");
  
//   pontosRetirados = int.parse(stdin.readLineSync()!);

//   int restante(pontosIniciais, pontosRetirados){
//     return pontosIniciais - pontosRetirados;
//   }

//   int pontosRestantes = restante(pontosIniciais, pontosRetirados);
  
//   print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
// }


// void main (){
//   print("Informe o valor da compra:");
//   double valorCompra = double.parse(stdin.readLineSync()!);

//   int calculoCupons(double valor){
//     return valor ~/ 50;
//   }

//   int cupons = calculoCupons(valorCompra);

//   print("Você ganhou $cupons cupons.");

//   double proximoCupom(double valor){
//     return 50 - (valor % 50);
//   }

//   double valorProximoCupom = proximoCupom(valorCompra);

//   print("Falta ${valorProximoCupom.toStringAsFixed(2)} para o proximo cupom");
// }


// void main(){
//   int idade = 0;

//   print("Quantos anos você tem?");

//   String? entrada = stdin.readLineSync();
//     if (entrada != null){
//       if (entrada != ""){
//         idade = int.parse(entrada);
//       }
//     }

//   if(idade >= 18){
//     print("Você pode dirigir");
//   } else if (idade < 18){
//     print("Você ainda não pode tirar carta!");
//   }

// }

// void main(){

//    print("Digite um numero de 1 a 12");
//    String numero = "";

//    String? entrada = stdin.readLineSync();

//     if (entrada != null && entrada != ""){
//         numero = entrada;
//       }
    
//   String acharMes (String numero){
//     switch (numero){
//       case "1":
//       return ("Janeiro");
//       case "2":
//       return ("Fevereiro");
//       case "3":
//       return ("Março");
//       case "4":
//       return ("Abril");
//       case "5":
//       return ("Maio");
//       case "6":
//       return ("Junho");
//       case "7":
//       return ("Julho");
//       case "8":
//       return ("Agosto");
//       case "9":
//       return ("Setembro");
//       case "10":
//       return ("Outubro");
//       case "11":
//       return ("Novembro");
//       case "12":
//       return ("Dezembro");
//       default: 
//       return ("Não é um mes valido");
//     }
//   }
  
//   String mes = acharMes (numero); 
  
//   print(mes);
// }




// double saldo = 1000.0; // Saldo inicial em reais

// void main() {
//   print('Boas-vindas ao seu banco digital!');
//   print('Seu saldo atual é de: R\$ ${saldo.toStringAsFixed(2)}');

//   print("Digite o valor do Pix que deseja realizar:");
//   double valorPix = 0.0;
//   String? entrada = stdin.readLineSync();
//     if (entrada != null && entrada != ""){
//       valorPix = double.parse(entrada);
//     }

//   if(valorPix <= saldo){
//     double saldoFinal = saldo - valorPix;
//     print("Transferencia feita. Saldo final de R\$ $saldoFinal");
//   } else {
//     print("Saldo insuficiente. Operação não realizada!");
//   }
 
// }


// void main(){

//  int idade = 0;

//   print("Quantos anos você tem?");

//   String? entrada = stdin.readLineSync();
//     if (entrada != null && entrada != ""){
//         idade = int.parse(entrada);
//       }
    
//   if(idade >= 20){
//     print("Você pode dirigir no Japão, no Brasil e nos EUA");
//   } else if (idade >= 18 ){
//     print("Você pode dirigir no Brasil e nos EUA");
//   } else if (idade >= 16){
//     print("Você pode dirigir nos EUA"); 
//   } else {
//     print("Você não pode dirigir.");
//   }
// }


// void main(){

//  int idade = 0;
//  String pais = "";

//  void podeDirigir (int idade, String pais){
//     if((idade >= 20) && (pais == "Japão" || pais == "Brasil" || pais == "EUA")){
//     print("Você pode dirigir no Japão, no Brasil e nos EUA");
//   } else if ((idade >= 18) && (pais == "Brasil" || pais == "EUA")) {
//     print("Você pode dirigir no Brasil e nos EUA");
//   } else if (idade >= 16 && pais == "EUA"){
//     print("Você pode dirigir nos EUA"); 
//   } else {
//     print("Você não pode dirigir.");
//   }
//   }

//   print("Quantos anos você tem?");

//   String? entrada = stdin.readLineSync();
//     if (entrada != null && entrada != ""){
//         idade = int.parse(entrada);
//       }

//   print("Em qual pais você está: Brasil, Japão ou EUA?");

//   pais = stdin.readLineSync()!;

//   podeDirigir (idade, pais);
// }






// import 'dart:io';
// void main(){
//   List<String> categoria = <String>["eletronicos", "alimentos", "vestuario", "livros"];
//   String? entrada = "";

//   void categoriaValida(){
//     print("Digite a categoria do produto ${categoria.toString()}");
//       entrada = stdin.readLineSync();
//         if (entrada != null && categoria.contains(entrada)){
//           print("Categoria valida: $entrada");
//         } else {
//           print("Categoria invalida");
//           categoriaValida();
//           }
//   }
//   categoriaValida();
// }


// import 'dart:io';
// void main(){
//   List<String> tiposPermitidos = <String>["pdf", "jpeg", "png", "docx"];
  
//   void extensaoValida(){
//     print("Faça o upload do seu arquivo");
//     String? arquivo = stdin.readLineSync()!;
//     String extensao = arquivo.split('.').last;
//       if (tiposPermitidos.contains(extensao)){
//           print("Upload feito");
//       } else {
//           print("Arquivo inválido, por favor faça upload com as seguintes extensões ${tiposPermitidos.toString()}");
//           extensaoValida();
//         }
//     }

//     extensaoValida();
//   }
  

// import 'dart:io';
// void main(){
//   int numero = solicitarNumero();
//   String mes = acharMes (numero); 
//   print(mes);
// }

// int solicitarNumero(){ //função que verifica se a entrada é valida e não está vazia
//   print("Digite um numero de 1 a 12");
//    String? entrada = stdin.readLineSync();
//    int? numero;

//     if(entrada != null && entrada != ""){
//        numero = int.tryParse(entrada);
//       } if (numero != null && numero >=1 && numero <=12){
//          return numero;
//     } else {
//         print("Numero invalido. Digite um numero valido");
//         return solicitarNumero();
//       }
//     }
    
//   String acharMes (int numero){
//     switch (numero){
//       case 1:
//       return ("Janeiro");
//       case 2:
//       return ("Fevereiro");
//       case 3:
//       return ("Março");
//       case 4:
//       return ("Abril");
//       case 5:
//       return ("Maio");
//       case 6:
//       return ("Junho");
//       case 7:
//       return ("Julho");
//       case 8:
//       return ("Agosto");
//       case 9:
//       return ("Setembro");
//       case 10:
//       return ("Outubro");
//       case 11:
//       return ("Novembro");
//       case 12:
//       return ("Dezembro");
//       default: 
//       return ("Não é um mes valido");
//     }
//   }


import 'dart:io';
void main() {
double saldo = 1000.0; // Saldo inicial em reais

  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$ ${saldo.toStringAsFixed(2)}');

  String operacao = escolhaOperacao(); // a variavel operacao recebe o retorno da função escolhaOperacao - deposito, retirada, transferencia, pagamento 
  double valor = escolheValor(operacao, saldo); // a variavel valor recebe o valor escolhido para a operação, levando em conta se é credito ou debito
  double saldoFinal = operacoes(operacao, saldo, valor); // saldo final traz o retorno da conta feita em operacoes, que pega a operação escolhida, o saldo inicial e o valor escolhido
  
  print("Operação realizada.");
  print("Seu saldo final é R\$ ${saldoFinal.toStringAsFixed(2)}");

}

double soma(double saldo, double valor){
  return (saldo + valor);
}

double subtracao(double saldo, double valor){
  return (saldo - valor);
}

double operacoes(String operacao, double saldo, double valor){
  switch (operacao) {
  case "deposito": 
  return soma (saldo, valor);
  case "retirada":
  case "transferencia":
  case "pagamento":
  return subtracao (saldo, valor);
  default:
    print("Operação desconhecida");
    return saldo;
  }
}

String escolhaOperacao(){
  List<String> operacoes = <String>["deposito", "retirada", "transferencia", "pagamento"];
  
  print("Digite a operação que deseja realizar: deposito, retirada, transferencia, pagamento");
  String? operacao = stdin.readLineSync();
  if (operacao != null && operacoes.contains(operacao)){
    return operacao;
  } else {
    print("Operação inválida. Por favor tente de novo");
    return escolhaOperacao();
  }
}

double escolheValor(String operacao, double saldo) {
  print("Digite o valor da operação:");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    double? valor = double.tryParse(entrada);

    if (valor == null || valor <= 0) {
      print("Valor inválido.");
      return escolheValor(operacao, saldo);
    }

    if (operacao != "deposito" && valor > saldo) {
      print("Saldo insuficiente.");
      return escolheValor(operacao, saldo);
    }

    return valor;
  } else {
    print("Entrada inválida.");
    return escolheValor(operacao, saldo);
  }
}



