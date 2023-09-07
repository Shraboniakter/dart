import 'package:flutter/material.dart';

void main(){
  runApp(MyProject());
}

class MyProject extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }

}
class MyApp extends StatelessWidget{
  get childrent => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 100,
      elevation: 70,
      backgroundColor: Colors.green,
      title:Center(
        child:Text('Home'),),
       titleTextStyle:TextStyle(fontWeight:FontWeight.bold,fontSize: 30),
       leading: Icon(
         Icons.add_business_rounded,
       ),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search)),

       ],
      ),
    body: Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children:[
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('This is mod 5 Assignment',
              style:TextStyle(color: Colors.black,fontSize:20 ,fontWeight: FontWeight.w600),

            ),
            ]
        ),

        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
                      Text('MY ',style: TextStyle(fontSize: 30, color: Colors.redAccent),),
                      Text('Phone ',style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),),
                      Text('Name ',style: TextStyle(fontSize: 20.5, color: Colors.purple),),
                      Text('is iphone 7',style: TextStyle(fontSize: 40, color: Colors.amber),),
  ],
        ),
      ],
    ),
  );
  }

}