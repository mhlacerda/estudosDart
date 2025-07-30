import "package:http/http.dart";
import "dart:convert"; // converter o json

void main(){
  //requestData();
  //requestDataAsync();
  sendDataAsync({
    "id": "ID200",
    "name": "Manuela",
    "lastName": "Lac",
    "balance": 5000
  });
}

// requestData(){
//   String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
//   Future<Response> futureResponse = get(Uri.parse(url));
//   print(futureResponse);

//   futureResponse.then((Response response) {
//     print(response);
//     //print(response.body);

//     List<dynamic> listAccounts = json.decode(response.body);
//     print(listAccounts);

//     Map<String, dynamic> mapCarla = listAccounts.firstWhere((element) => element["name"] == "Carla",);

//     print("");
//     print(mapCarla["lastName"]);

//   },);
// print("ultima coisa");

// }

Future<List<dynamic>> requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
  Response response = await get(Uri.parse(url));
  return json.decode(response.body);
}


sendDataAsync(Map<String, dynamic> mapAccount) async{
  List<dynamic> listAccounts = await requestDataAsync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);
  //print(content);

  String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
  Response response = await post(Uri.parse(url), body: content);
  print(response.body);
}