import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice_2/Todo%20App/Main%20Page.dart';

const Textcolor=Color.fromRGBO(18, 38, 32, 1.0);
const Btn_Background=Color(0xFF603f8b);
const Pra_Color=Color.fromRGBO(231, 242, 248, 1.0);
const Color toptext = Color(0xFFa16ae8);
const Btn_Txt=Color(0xFF603f8b);

class TodoAppStarter extends StatelessWidget {
  const TodoAppStarter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text("TodoTrack",style: TextStyle(color: toptext,fontSize: 70,fontWeight: FontWeight.w500,fontFamily: 'Tinos' ),),
              ),
              Container(
                child: Text("Keep Track, Stay on Track! ",style: TextStyle(color:tdBlue,fontFamily: 'Tinos',fontSize: 22,letterSpacing: 2,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,bottom: 30),
                width: 200,
                height: 200,
                child: Image.asset("assets/Images/todo.gif"),
              ),
              Container(
                child: ElevatedButton(onPressed: () async {
                  showLoaderDialog(context); // Show the loader dialog
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  TodoMainpage() ));
                }, child: Text("Get Started",style: TextStyle(color:Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Btn_Background),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 150,vertical:
                20))),),
              )


            ],
          ),
        )
    );
  }
}


Future<void> showLoaderDialog(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: false, // Prevents the dialog from being dismissed by tapping outside
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Loading Todos...", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      );
    },
  );
}

