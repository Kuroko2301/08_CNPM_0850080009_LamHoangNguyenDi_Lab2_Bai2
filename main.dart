import 'package:flutter/material.dart';

import 'Data.dart';
import 'Detail.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> name =['SIÊU XE'];

  static List url = ['https://wallpapercave.com/wp/wp9610855.jpg'];

  final List<DataModel> data = List.generate(
      name.length,
          (index)
      => DataModel('${name[index]}', '${url[index]}','${name[index]} \nSiêu xe NEON'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Bài tập buổi 2 - bài 2'),),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(data[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(data[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(dataModel: data[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}