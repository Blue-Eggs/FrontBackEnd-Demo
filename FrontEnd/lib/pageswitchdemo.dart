import 'package:demo_flutter/api/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: ((context) => DemoProvider()),
      child:MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
        primaryColor: Colors.green,
       ),
       initialRoute: '/second',
       routes: {
        '/': (context) => myHomePage(),
        '/second': (context) => myHomePage2(),
       }
      ),
    );

  }
}

class myHomePage extends StatelessWidget{
  //const myHomePage({super.key});


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              }, 
              child: const Text(
                'Press to go to next page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              
              
            ),
            
          ],
        ),
      ),
    );
  }
}

class myHomePage2 extends StatelessWidget{
  const myHomePage2({super.key});
  

  @override 
  Widget build(BuildContext context){
    final demoP = Provider.of<DemoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Home Page', selectionColor: Colors.black),
        shadowColor: Colors.green,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: demoP.mylist.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(demoP.mylist[index].title),
            subtitle: Text(demoP.mylist[index].descriptions),
            textColor: Colors.red,
          );
        }
      ),
    );
  }
}