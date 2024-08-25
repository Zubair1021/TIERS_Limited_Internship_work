import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterpractice_2/Todo%20App/Todo.dart';
const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0xFF5F52EE);
const Color tdBlack = Color(0xFF3A3A3A);

class Todoitems extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final OnDeleteItem;
  const Todoitems({super.key,required this.todo,required this.OnDeleteItem, required this.onTodoChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      child: ListTile(
        onTap: ()  {
          onTodoChanged(todo);
        },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          tileColor: Colors.white,
          leading: Icon(todo.isDone?Icons.check_box:Icons.check_box_outline_blank
            ,color: tdBlue,),
          title: Text(todo.TodoText!,style: TextStyle(fontSize: 16,color: tdBlack,decoration: todo.isDone?TextDecoration.lineThrough:null),),
          trailing: Container(padding: EdgeInsets.all(0),margin:EdgeInsets.symmetric(vertical: 8) , height: 40,width: 35,decoration: BoxDecoration(color: tdRed,borderRadius: BorderRadius.circular(5)),child: IconButton(color: Colors.white,iconSize: 18,icon: Icon(Icons.delete), onPressed: () {OnDeleteItem(todo.id); },),),
      )
    );
  }
}
