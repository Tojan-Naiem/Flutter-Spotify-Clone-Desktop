import 'package:flutter/material.dart';
import 'package:spotify_clone_desktop/models/song.dart';

class PlaylistHeader extends StatefulWidget {
   PlaylistHeader(this.song,{super.key});
  String song;
  @override
  State<PlaylistHeader> createState() => _PlaylistHeaderState();
}

class _PlaylistHeaderState extends State<PlaylistHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height:200,
            width: 200,
            decoration:const BoxDecoration(
            
              image: DecorationImage( 
                image: AssetImage('images/girl.jpg',),
                fit: BoxFit.cover
              )
            ),
 
          ),
          const SizedBox(width: 15,),
          Expanded(
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('PLAYLIST',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15,color: Colors.grey),),
                const SizedBox(height: 15,),
                Text(widget.song,style:const TextStyle(color: const Color.fromRGBO(255, 255, 255, 1),fontSize: 35,fontWeight: FontWeight.w300),),
                const SizedBox(height: 15,),
                const Text('A daily selection of chill beats - perfect to help you relax & study',style: TextStyle(fontSize: 15,color: const Color.fromRGBO(255, 255, 255, 0.5)),),
                const SizedBox(height: 15,),
                const Text('Created by Lofi Girl-12 songs,28 min',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5),fontSize: 15),),
              ],
            )
            )
          
      
         
         
        ],
      ),
    );
  }
}
