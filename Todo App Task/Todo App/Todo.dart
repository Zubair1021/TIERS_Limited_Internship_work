class Todo{
  String? id;
  String? TodoText;
  bool isDone;
  Todo({required this.id,required this.TodoText,this.isDone=false});

  static List<Todo> todolist(){
    return [
      Todo(id:'01',TodoText:'Landing Page Design',isDone:true),
      Todo(id:'02',TodoText:'Eating Breakfast',isDone:true),
      Todo(id:'03',TodoText:'Meeting with Hamza',isDone:true),
      Todo(id:'04',TodoText:'MLSA Event',),
      Todo(id:'05',TodoText:'App Designing',),
      Todo(id:'06',TodoText:'Meeting with Awais'),
      Todo(id:'07',TodoText:'Taking Tea with Snacks',),
      Todo(id:'08',TodoText:'Team Meeting',),
    ];
  }

}