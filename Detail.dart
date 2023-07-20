import 'package:flutter/material.dart';

import 'Data.dart';

class Detail extends StatelessWidget {
  final DataModel dataModel;

  const Detail({Key? key, required this.dataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dataModel.name),),
      body: Column(
        children: [
          Image.network(dataModel.ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(dataModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}