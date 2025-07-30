import 'package:http/http.dart';
import 'dart:convert';

//Sua tarefa é criar uma função em Dart que filtre as consultas de um determinado veterinário e as organize por ordem de dia e horário e mostre na tela.
void main(){
  requestData();
  fetchAndSchedule("Dra. Patrícia Gomes");
}

Future requestData() async{
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> agenda = json.decode(response.body);
    agenda.sort((a, b) => (a["appointment"] as String).compareTo(b["appointment"]));

  mostrarAgenda(agenda, "Dra. Patrícia Gomes");
}

void mostrarAgenda(List<dynamic> agenda, String nomeVet){
  
  List<Map<String, dynamic>> horarioVet = [];

  for(dynamic element in agenda){
    Map<String, dynamic> agendamentos = element as Map<String, dynamic>;
    //print(horarioMarcado);

    if(agendamentos["veterinarian"] == nomeVet){
      horarioVet.add(agendamentos);
    }    
  }
  print("$nomeVet tem consulta dia: ");
  for (dynamic entrada in horarioVet){
    Map<String, dynamic> horario = entrada as Map<String, dynamic>;
      print("${horario["appointment"]} com ${horario["pet_name"]}");
  }
}

Future fetchAndSchedule(String nomeVet) async {
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> agenda = json.decode(response.body);

  List<dynamic> agendamentosVets = agenda.where((agendamento) => agendamento["veterinarian"] == nomeVet).toList(); // simplifica o for e o if da função de cima
  
  agendamentosVets.sort((a, b) => DateTime.parse(a["appointment"]).compareTo(DateTime.parse(b["appointment"]))); // coloca em ordem os escolhidos pelo nome do vet

  print("Consultas Agendadas para $nomeVet:");
  for (Map<String, dynamic> appointment in agendamentosVets) {
    print("Pet: ${appointment["pet_name"]} - Horário: ${appointment["appointment"]}");
  }
}