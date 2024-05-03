import 'package:flutter/material.dart';
import 'package:spotify_clone_desktop/models/song.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}
// Color.fromRGBO(255, 255, 255, 0.5)
class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return DataTable(

      columns: [
        DataColumn(label:const Text('TITLE',style: TextStyle(color:  Colors.white,fontFamily:'Montserrat',fontSize: 12),),
 ),
    DataColumn(label:const Text('ARTIST',style: TextStyle(color: Colors.white,fontFamily:'Montserrat',fontSize: 12),),),
      DataColumn(label:const Text('ALBUM',style: TextStyle(color: Colors.white,fontFamily:'Montserrat',fontSize: 12),),),
      DataColumn(label:const   Icon(Icons.access_time,color: Colors.white,)),
      
      ],
      rows: [
           for(int i=0;i<Song.songs.length;i++)
           dataRow(Song.songs[i])


      ],
   
    );
  }
  DataRow dataRow(Song song){

    return DataRow(
      
      cells:[
        dataCell(song.title!),
        dataCell(song.artist!),
        dataCell(song.album!),
        dataCell(song.duration!),
      ] );
  }
  DataCell dataCell(String s){
    return DataCell(

     Text(s,style: TextStyle(color:  Colors.white,fontFamily:'Montserrat',fontSize: 12),)

    );
  }
}