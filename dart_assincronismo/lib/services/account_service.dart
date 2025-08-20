import 'dart:async';
import 'dart:convert';

import 'package:dart_assincronismo/api_key.dart';
import 'package:dart_assincronismo/models/account.dart';
import 'package:http/http.dart';
import 'package:collection/collection.dart';

class AccountService {
  
  final StreamController<String> _streamController = StreamController<String>();
  Stream<String> get streamInfos => _streamController.stream;
  String url = "https://api.github.com/gists/ca13cc7b687b8bea12df291be352bd25";

  Future<List<Account>> getAll() async {
    Response response = await get(Uri.parse(url));
    _streamController.add("${DateTime.now()} | Requisição com async e await");

    Map<String, dynamic> mapResponse = json.decode(response.body);
    List<dynamic> listDynamic = json.decode(mapResponse["files"]["accounts.json"]["content"]);

    List<Account> listAccounts = [];

    for (dynamic dyn in listDynamic){
      Map<String, dynamic> mapAccount = dyn as Map<String, dynamic>;
      Account account = Account.fromMap(mapAccount);
      listAccounts.add(account);
    }

    return listAccounts;
  }

  Future addAccount(Account account) async {
    List<Account> listAccounts = await getAll();
    listAccounts.add(account);

    List<Map<String, dynamic>> listContent = [];
    for (Account account in listAccounts){
      listContent.add(account.toMap());
    }

    String content = json.encode(listContent);
  

    Response response = await post(
      Uri.parse(url), 
        headers: {
        "Authorization" : "Bearer $apiGitHubKey"
      },
    // {"description":"An updated gist description","files":{"README.md":{"content":"Hello World from GitHub"}}}'
      body: json.encode({
        "description": "account.json",
        "public":true,
        "files": {
          "accounts.json": {
            "content": content,
          }
        }
      }),
    );
  
  if (response.statusCode.toString()[0] == "2") {
      _streamController.add(
        "${DateTime.now()} | Requisição adição bem sucedida (${account.name}).");
  } else {
        _streamController.add("${DateTime.now()} | Requisição falhou (${response.statusCode}).");
    }
  }

  getAccountById(String accountId) async{

    List<Account> listAccounts = await getAll();
    Account? foundAccountId = listAccounts.firstWhereOrNull((account) => account.id == accountId);
    if (foundAccountId == null){
      print("ID inválido");
    }else {
      return foundAccountId;
    }
  }

  updateAccount(Account account) async{
    List<Account> listAccounts = await getAll();

   int foundId = listAccounts.indexWhere((conta) => conta.id == account.id);
    if(foundId != -1){
      listAccounts[foundId] = account;
      List<Map<String, dynamic>> listUpdated = [];

      for (Account account in listAccounts){
        listUpdated.add(account.toMap());
      }

      String contentUpdated = json.encode(listUpdated);

      Response response = await patch(
        Uri.parse(url),
        headers: {
        "Authorization" : "Bearer $apiGitHubKey"
        },
        body: json.encode({
          "files": {
            "accounts.json": {
              "content": contentUpdated,
            }
          }
        }),
        );
    } else {
      print("Id não encontrado!");
    } 
  }


  deleteAccount(Account account) async{
    List<Account> listAccounts = await getAll();

   int foundId = listAccounts.indexWhere((conta) => conta.id == account.id);
    if(foundId != -1){
      listAccounts.removeAt(foundId);
      List<Map<String, dynamic>> listUpdated = [];

      for (Account account in listAccounts){
        listUpdated.add(account.toMap());
      }

      String contentUpdated = json.encode(listUpdated);

      Response response = await patch(
        Uri.parse(url),
        headers: {
        "Authorization" : "Bearer $apiGitHubKey"
        },
        body: json.encode({
          "files": {
            "accounts.json": {
              "content": contentUpdated,
            }
          }
        }),
        );
    } else {
      print("Id não encontrado!");
    } 
  }

}