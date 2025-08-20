

import 'package:dart_assincronismo/screens/account_screens.dart';

void main(){
  AccountScreen accountScreen = AccountScreen();
  accountScreen.initializeStream();
  accountScreen.runChatBot();
}




//void main(){
  // StreamSubscription subscription = streamController.stream.listen((event){
  //   print(event);
  // });

  // requestData();
  // requestDataAsync();
  // sendDataAsync([{
  //   "id": "ID200",
  //   "name": "Manuela",
  //   "lastName": "Lac",
  //   "balance": 5000
  // },
  // {
  //   "id": "NEW001",
  //   "name": "NovaCliente",
  //   "lastName": "Sobrenome",
  //   "balance": 1000
  // }]); - O QUE FOI Y=TRABALHO NO COMEÇO DO CURSO
//}

// requestData(){
//   String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
//   Future<Response> futureResponse = get(Uri.parse(url));
//   futureResponse.then((Response response) {
//   streamController.add("${DateTime.now()} | Requisição com future e then");

//   },);
// } - PRIMEIRA FUNÇÃO PARA APRENDER COM then