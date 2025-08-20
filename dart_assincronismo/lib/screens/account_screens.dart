
import 'package:dart_assincronismo/models/account.dart';
import 'package:dart_assincronismo/services/account_service.dart';
import 'dart:io';

class AccountScreen {
  final AccountService _accountService = AccountService();

  void initializeStream(){
    _accountService.streamInfos.listen((event){
      print(event);
    });
  }

  void runChatBot() async{
    print("Olá, sou Lewis, assistente virtual do Banco d'Ouro.");
    print("Que bom te ter aqui com a gente.\n");

    bool isRunning = true;
    while(isRunning){
      print("Como posso te ajudar? (Digite o número desejado)");
      print("1 - 👀 Ver todas as contas do Banco");
      print("2 - ➕ Adicionar nova conta");
      print("3 - Sair\n");
      
      String? input = stdin.readLineSync();
        if (input != null){
          switch (input){
            case "1":{
              await _getAllAccount();
              break;
            }
            case "2":{
              await _addNewAccount();
              break;
            }
            case "3":{
              isRunning = false;
              print("Te vejo na próxima! 👋🏼 \n");
              break;
            }
            default: {
              print("Não entendi. Tente novamente\n");
            }
          }
        }
    }
  }

  Future _getAllAccount() async{
    List<Account> listAccounts = await _accountService.getAll();
    print(listAccounts);
  }

  Future _addNewAccount() async {
    Account newAccount = Account(id:"ID011", name: "TesteAdd", lastName: "Testando", balance: 801);

    await _accountService.addAccount(newAccount);
  }
}