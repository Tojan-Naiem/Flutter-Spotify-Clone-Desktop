import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label:const Text('TITLE',style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 0.5),fontFamily:'Montserrat',fontSize: 12),),
 ),
    DataColumn(label:const Text('ARTIST',style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 0.5),fontFamily:'Montserrat',fontSize: 12),),),
      DataColumn(label:const Text('ALBUM',style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 0.5),fontFamily:'Montserrat',fontSize: 12),),),
      DataColumn(label:const   Icon(Icons.access_time,color: Colors.white,)),
      
      ],
      rows: [],
   
    );
  }
}