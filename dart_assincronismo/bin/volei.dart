import 'package:http/http.dart';
import 'dart:convert';

void main(){
  requestData();
}



Future requestData() async {
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
  Response response = await get(Uri.parse(url));
  Map<String,dynamic> volei = json.decode(response.body);
  int playersPerTeam = volei["rules"]["playersPerTeam"];
  List<dynamic> players = volei["players"]; 
  players.sort((a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"]));

  organizarTimes(playersPerTeam, players);
}

void organizarTimes(int playersPerTeam,  List<dynamic> players){
 
  Map<String, List<Map<String, dynamic>>> timesFormados = {}; //(Para guardar os times completos)
  int contador = 1;
  List<Map<String, dynamic>> timeAtual = []; //(Para montar o time que está sendo construído)
  Set<String> posicoesUsadasNoTimeAtual = {}; //(Para não repetir posições dentro de um mesmo  time)

  for (dynamic player in players){
     Map<String, dynamic> jogador = player as Map<String, dynamic>;
    if (timeAtual.length < playersPerTeam){
      if(!posicoesUsadasNoTimeAtual.contains(jogador["position"])){ 
        posicoesUsadasNoTimeAtual.add(jogador["position"]);
        timeAtual.add(player);
      }
        if(timeAtual.length == playersPerTeam){
          timesFormados["Time $contador"] = List.from(timeAtual);
          timeAtual.clear();
          posicoesUsadasNoTimeAtual.clear();
          contador++;
        }
    }    else {
      // deixa o jogador aguardando a proxima lista
    }
  }

  for (var entry in timesFormados.entries) {
    String nomeDoTime = entry.key; // Isso pega "Time 1", "Time 2", etc.
    List<Map<String, dynamic>> listaDeJogadoresDoTime = entry.value; // Isso pega a lista de jogadores daquele time
        print("");
        print("Os jogadores do $nomeDoTime são: ");
      for(dynamic jogador in listaDeJogadoresDoTime){
       print(jogador["name"]);
      }
  }
}    
