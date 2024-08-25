import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterpractice_2/Todo%20App/Todo%20Items.dart';
import 'package:flutterpractice_2/Todo%20App/Todo.dart';

// --------------Todo App Color
const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0xFF5F52EE);

const Color tdBlack = Color(0xFF3A3A3A);
const Color tdGrey = Color(0xFF717171);
const Color toptext = Color(0xFFa16ae8);

const Color tdBGColor = Color(0xFFEEEFF5);

// ---------------List variable
final TodoList =Todo.todolist();


class TodoMainpage extends StatefulWidget {
  const TodoMainpage({super.key});

  @override
  State<TodoMainpage> createState() => _TodoMainpageState();
}

class _TodoMainpageState extends State<TodoMainpage> {
  final _todocontroller=TextEditingController();
  //For Searching fast we create a new list
  List<Todo> _foundTodo = [];
  @override

  @override
  void initState() {
    _foundTodo=TodoList;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor:tdBGColor,
        elevation: 0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("TodoTrack",style: TextStyle(color: toptext),),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/Images/todo.gif'),
              ),
            )

          ],
        ),
      ),
      body:Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsetsDirectional.only(bottom: 50,),
          child:Column(
            children: [
              TodoSearchBox(),
              Expanded(child: ListView(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 40,bottom: 20),
                    child: Text("All Todos",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
                  ),

                  for(Todo todo in _foundTodo.reversed)
                    Todoitems(todo: todo,
                    onTodoChanged: _handleTodoChange,
                      OnDeleteItem:_deleteTodoItem,
                    ),
                ],
              ))

            ],
          ),
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(color: Colors.grey,offset: Offset(0.0, 0.0),blurRadius:10.0,spreadRadius: 0.0 ),],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    controller: _todocontroller,
                    decoration: InputDecoration(
                      hintText: 'Add a Todo Task',
                      border: InputBorder.none
                    ),
                  ),
                )),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20
                  ),
                  child: ElevatedButton(

                    child: Text('+',style: TextStyle(fontSize: 40,color: Colors.white),),
                    onPressed: () {
                      _addTodo(_todocontroller.text);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(tdBlue),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:10),),

    ),
                    ),


                  ),

              ],
            ),

          )
        ],
      )
    );
  }

  // ---------------Todo Changing Function-----------
  void _handleTodoChange(Todo todo){
    setState(() {
      todo.isDone = !todo.isDone;
    });

  }

  //--------------Delete Todo Function----------------
  void _deleteTodoItem(String id){
    setState(() {
      TodoList.removeWhere((item) => item.id == id);
    });

  }

  //-----------Add new Todo Function

  void _addTodo(String todo){
    setState(() {
      TodoList.add(Todo(id: DateTime.now().microsecondsSinceEpoch.toString(), TodoText: todo));
    });
    _todocontroller.clear();

  }
  void _runfilter(String enterkeyword){
  List<Todo> results =[];
  if(enterkeyword.isEmpty){
    results=TodoList;
  }
  else{
    results=TodoList.where((item) => item.TodoText!.toLowerCase().contains(enterkeyword.toLowerCase()) ).toList();
  }

  setState(() {
    _foundTodo=results;
  });
  }

  // -------------SearchBox--------
  Widget TodoSearchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ) ,
      child: TextField(
        onChanged: (value) => _runfilter(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search,color: tdBlack,size: 20,),
            prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                minWidth: 25
            ),
            border: InputBorder.none,
            hintText: 'Search Todo',
            hintStyle: TextStyle(color: tdGrey)

        ),
      ),
    );
  }
}


