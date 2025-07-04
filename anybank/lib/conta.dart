class Conta {
  String titular;
  double _saldo;

  Conta (this.titular, this._saldo);

  void receber(double valor){
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor){
    if (_saldo >= valor){
      _saldo -= valor;
    imprimeSaldo();
    }
  }

  void imprimeSaldo(){
    print("O saldo atual de $titular é R\$ $_saldo.");
  }
}

class Cliente {
  String nome;
  List<int> _reserva;

  Cliente(this.nome, this._reserva);

  void fazerReserva(int quarto){
    _reserva.add(quarto);
    imprimeReserva();
  }

  void cancelarReserva(int quarto){
    if (_reserva.contains(quarto)){
      _reserva.remove(quarto);
      imprimeReserva();
    } else {
      print("Esse quarto não está na sua reserva");
    }
  }

  void imprimeReserva(){
      print("Você tem os seguintes quartos reservados: $_reserva");
  }
}