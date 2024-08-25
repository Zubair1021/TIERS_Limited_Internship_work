import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const  backColor = Color(0xFF41729F);
const  AppbackColor = Color(0xFF274472);
const  AppFontColor = Color(0xFFC3E0E5);



int _selectedValue1 = 1;                //For MCQ 1
int _selectedValue2 = 1;                //For MCQ 2
int _selectedValue3 = 1;                //For MCQ 3
int _selectedValue4 = 1;                //For MCQ 4
int _selectedValue5 = 1;                //For MCQ 5
int _selectedValue6 = 1;                //For MCQ 6

class McqForm extends StatefulWidget {
  const McqForm({super.key});

  @override
  State<McqForm> createState() => _McqFormState();
}

class _McqFormState extends State<McqForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(title: Text("Quick Quiz",style: TextStyle(color: AppFontColor,fontSize: 30,letterSpacing: 2),),backgroundColor: AppbackColor,),
      body: SingleChildScrollView(
              child: Column(
              children: [

              Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("1- HTML Stand for:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
              RadioListTile<int>(
              title: Text('Hypertext make Langugae',style: TextStyle(color: Colors.limeAccent),),
              value: 1,
              groupValue: _selectedValue1,
              onChanged: (value) {
              setState(() {
              _selectedValue1 = value!;
              });
              },
              ),
                RadioListTile<int>(
                  title: Text('Hyper make Langugae',style: TextStyle(color: Colors.limeAccent)),
                  value: 2,
                  groupValue: _selectedValue1,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue1 = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Hyper Text markup Language',style: TextStyle(color: Colors.limeAccent)),
                  value: 3,
                  groupValue: _selectedValue1,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue1 = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Hyper make Laung',style: TextStyle(color: Colors.limeAccent)),
                  value: 4,
                  groupValue: _selectedValue1,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue1 = value!;
                    });
                  },
                ),
              ],
              ),
              ),
                Divider(color: Colors.white, thickness: 2.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("2- Which one is the Primary Memory:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
                      RadioListTile<int>(
                        title: Text('ROM',style: TextStyle(color: Colors.limeAccent),),
                        value: 1,
                        groupValue: _selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue2 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('RAM',style: TextStyle(color: Colors.limeAccent)),
                        value: 2,
                        groupValue: _selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue2 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('HHD',style: TextStyle(color: Colors.limeAccent)),
                        value: 3,
                        groupValue: _selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue2 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('SSD',style: TextStyle(color: Colors.limeAccent)),
                        value: 4,
                        groupValue: _selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue2 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white, thickness: 2.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("3- CPU Stand for:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
                      RadioListTile<int>(
                        title: Text('Center process ',style: TextStyle(color: Colors.limeAccent),),
                        value: 1,
                        groupValue: _selectedValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue3 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Centeral Processing Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 2,
                        groupValue: _selectedValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue3 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Cetinal Process Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 3,
                        groupValue: _selectedValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue3 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Centinal Processing Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 4,
                        groupValue: _selectedValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("4- HTML Stand for:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
                      RadioListTile<int>(
                        title: Text('Hypertext make Langugae',style: TextStyle(color: Colors.limeAccent),),
                        value: 1,
                        groupValue: _selectedValue4,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue4 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Hyper make Langugae',style: TextStyle(color: Colors.limeAccent)),
                        value: 2,
                        groupValue: _selectedValue4,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue4 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Hyper Text markup Language',style: TextStyle(color: Colors.limeAccent)),
                        value: 3,
                        groupValue: _selectedValue4,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue4 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Hyper make Laung',style: TextStyle(color: Colors.limeAccent)),
                        value: 4,
                        groupValue: _selectedValue4,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue4 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white, thickness: 2.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("5- Which one is the Primary Memory:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
                      RadioListTile<int>(
                        title: Text('ROM',style: TextStyle(color: Colors.limeAccent),),
                        value: 1,
                        groupValue: _selectedValue5,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue5 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('RAM',style: TextStyle(color: Colors.limeAccent)),
                        value: 2,
                        groupValue: _selectedValue5,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue5 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('HHD',style: TextStyle(color: Colors.limeAccent)),
                        value: 3,
                        groupValue: _selectedValue5,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue5 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('SSD',style: TextStyle(color: Colors.limeAccent)),
                        value: 4,
                        groupValue: _selectedValue5,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue5 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white, thickness: 2.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.only(left: 20,top:10 ),child:Text("6- CPU Stand for:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,color: Colors.white),)),
                      RadioListTile<int>(
                        title: Text('Center process ',style: TextStyle(color: Colors.limeAccent),),
                        value: 1,
                        groupValue: _selectedValue6,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue6 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Centeral Processing Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 2,
                        groupValue: _selectedValue6,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue6 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Cetinal Process Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 3,
                        groupValue: _selectedValue6,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue6 = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: Text('Centinal Processing Unit',style: TextStyle(color: Colors.limeAccent)),
                        value: 4,
                        groupValue: _selectedValue6,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue6 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
              ),
              ),
    );
  }
}



