import 'dart:convert';
import "package:http/http.dart";
import "package:dart_assincronismo/api_key.dart";


void main() {
  //requestDataAsync();
  // sendDataAsync([
  //   {"id": 4, "name": "Mouse", "price": 50.00},
  //   {"id": 5, "name": "Monitor", "price": 800.00},
  //   {"id": 6, "name": "Teclado", "price": 200.00}
  // ], "Periféricos");

  sendDataAsync([
    {"id": 10, "name": "bloquinho", "price": 5.00},
    {"id": 11, "name": "caneta", "price": 8.00},
    {"id": 12, "name": "borracha", "price": 10.00}
  ], "Papelaria");
}


// Future requestDataAsync() async{
//   String url = "https://gist.githubusercontent.com/mhlacerda/af84c0191c557127979fdd45f5a06ef9/raw/42f6372a411574357948ee8708c4fbd9ae4844a6/products.json";
//   Response response = await get(Uri.parse(url));
//     //print(response.body);
//     return json.decode(response.body);
    
// } 

Future sendDataAsync(List<Map<String, dynamic>> mapProduto, String nomeDaLista) async{
//  List<dynamic> listaProdutos = await requestDataAsync();
    List<dynamic> listaProdutos = [];
    listaProdutos.add(mapProduto);
    String conteudoAtualizado = json.encode(listaProdutos);

  String url = "https://api.github.com/gists/af84c0191c557127979fdd45f5a06ef9";
  Response response = await post(
    Uri.parse(url),
    headers: {
    "Authorization" : "Bearer $apiGitHubKey"
    },
    body: json.encode({
      "description": "$nomeDaLista",
      "public":true,
      "files": {
        "$nomeDaLista.json": {
          "content": conteudoAtualizado,
        }
      }
    }),
   );
    print(response.statusCode);
}