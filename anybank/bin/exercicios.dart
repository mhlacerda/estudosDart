

// class ItemEstoque {
//   String nome;
//   int estoque;
//   double preco;

//   ItemEstoque(this.nome, this.estoque, this.preco);

//   int venda(int quantidadeVendida){
//     estoque = estoque - quantidadeVendida;
//       return estoque;
//   }

//   int compra(int quantidadeComprada){
//     estoque += quantidadeComprada;
//     return estoque;
//   }

//   double valorPreco(double valorAlterado){
//     preco = valorAlterado;
//     return preco;
//   }
// }

// void main(){
//   ItemEstoque smartphone = ItemEstoque("Smartphone", 100, 1560.60);
//   ItemEstoque notebook = ItemEstoque("Notebook", 50, 5689.00);
//   ItemEstoque mouse = ItemEstoque("Mouse", 200, 60.87);
//   ItemEstoque teclado = ItemEstoque("Teclado", 200, 45.60);

//   List<ItemEstoque> produtos = <ItemEstoque>[];
//   produtos.addAll([smartphone, notebook, mouse, teclado]);

//   imprime(produtos);
//   print("");

//   smartphone.compra(20);
//   notebook.venda(10);
//   mouse.valorPreco(45.00);

//   imprime(produtos);
// }

// void imprime(List<ItemEstoque> produtos){
//   for (var produto in produtos){
//     print("Produto: ${produto.nome}. Quantidade em estoque: ${produto.estoque}\n Preço: ${produto.preco.toStringAsFixed(2)}");   
//   }
// }






import 'package:anybank/conta.dart';

void main(){
  Cliente clienteJoaquim = Cliente("Joaquim", []);

  clienteJoaquim.fazerReserva(12);
  clienteJoaquim.fazerReserva(21);
  clienteJoaquim.fazerReserva(33);

  clienteJoaquim.cancelarReserva(1);
  clienteJoaquim.cancelarReserva(21);




}

