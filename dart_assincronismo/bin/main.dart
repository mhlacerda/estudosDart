import "package:http/http.dart";
import "dart:convert";

void main(){
  //requestData();
  requestDataAsync();
}

requestData(){
  String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);

  futureResponse.then((Response response) {
    print(response);
    //print(response.body);

    List<dynamic> listAccounts = json.decode(response.body);
    print(listAccounts);

    Map<String, dynamic> mapCarla = listAccounts.firstWhere((element) => element["name"] == "Carla",);

    print("");
    print(mapCarla["lastName"]);

  },);
print("ultima coisa");

}

requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/mhlacerda/ca13cc7b687b8bea12df291be352bd25/raw/23922d4892945d6f6b11946dfd40f9b477d49637/accounts.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listAccounts = json.decode(response.body);
  print(listAccounts);
  Map<String, dynamic> mapDaniel = listAccounts.firstWhere((element) => element["name"] == "Daniel");
  print(mapDaniel["lastName"]);
  print(mapDaniel["balance"]);

  print("ultima coisa");

}

