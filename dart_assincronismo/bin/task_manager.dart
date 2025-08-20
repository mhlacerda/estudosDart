
import "dart:async";


class Task {
  String id;
  String title;
  String description;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map["id"],
      title: map["title"],
      description: map["description"],
      isCompleted: map["isCompleted"],
    );
  }

  Map<String, dynamic> toMap(){
    return <String, dynamic> {
      "id" : id,
      "title": title,
      "description": description,
      "isCompleted": isCompleted,
    };
  }
}

class TaskManager {

  StreamController<String> controller = StreamController<String>();

    
  final List<Task> _listTasks = []; // Perceba que "Task" ainda não existe.
    
  addTask(Task task) {
    _listTasks.add(task);
  }
    
  toggleTaskStatus(String id) {
    int index = _listTasks.indexWhere((task) => task.id == id);
    Task task = _listTasks[index];
    task.isCompleted = !task.isCompleted;
    _listTasks[index] = task;

    if(task.isCompleted == true){
      controller.sink.add("A tarefa $id foi marcada como completa.");
    } else {
        controller.sink.add("A tarefa $id está incompleta.");
    }
  }
    
  List<Task> getAll(){
    return _listTasks;
  }
    
  Task getById(String id) {
    return _listTasks.firstWhere((task) => task.id == id);
  }
    
  delete(String id) {
     _listTasks.removeWhere((task) => task.id == id);
  }
}
 

  

void main(){
  TaskManager manager = TaskManager();

  StreamSubscription subscription = manager.controller.stream.listen((message){
    print(message);
  });

  Task tarefa1 = Task(id: "1", title: "Primeira tarefa", description: "ir ao mercado", isCompleted: false);
  Task tarefa2 = Task(id: "2", title: "Segunda tarefa", description: "estudar dart", isCompleted: false);
  Task tarefa3 = Task(id: "3", title: "Terceira tareda", description: "acertar o exercicio", isCompleted: true);

  manager.addTask(tarefa1);
  manager.addTask(tarefa2);
  manager.addTask(tarefa3);

  manager.toggleTaskStatus("1");


  List listTasks = manager.getAll();
    for(var task in listTasks){
      print(task.toMap());
    }

  manager.delete("2");
  
    for(var task in listTasks){
      print(task.toMap());
    }

}