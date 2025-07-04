import 'package:anybank/conta.dart';

void main(){
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);
  List<Conta> contas = <Conta>[];
  contas.addAll([contaMatheus, contaRoberta]);

  for (var conta in contas){
    conta.imprimeSaldo();
  }

  contaRoberta.receber(3000);
  contaMatheus.receber(500);
  contaRoberta.enviar(1000);
}
