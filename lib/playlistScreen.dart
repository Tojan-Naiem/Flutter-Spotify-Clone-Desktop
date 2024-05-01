import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone_desktop/models/song.dart';
import 'package:spotify_clone_desktop/widget/likeButton.dart';
import 'package:spotify_clone_desktop/widget/playlistHeader.dart';

class PlaylistScreen extends StatefulWidget {
   PlaylistScreen(this.song,{super.key});
   String song;

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
  
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[Color.fromARGB(255, 163, 18, 8),Colors.black] ,
            stops: [0,0.3],
            
            )
        ),
        child: Scrollbar( 
          child: ListView( 
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 50,),
              Expanded(child: PlaylistHeader(widget.song),
          
              ),
              const SizedBox(height: 20,),
              LikeButton()
              
            ],
          ),
        ),
      ),

    );
  }











  AppBar appBar(){
    return AppBar(
      backgroundColor:Colors.transparent,
      elevation: 0,
      title: Row( 
        children: [
          Container(
            width: 35,
            height: 35,
            margin: const EdgeInsets.all(5),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color:  Color.fromRGBO(0, 0, 0, 0.2)
            ),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 17,)),
          ),
          Container(
            width: 35,
            height: 35,
             margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color:  Color.fromRGBO(0, 0, 0, 0.2)
            ),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 17,)),
          ),
          
        ],
      ),
      actions: [
        Container(
          height: 30,
          width: 30,
          margin: const EdgeInsets.only(right: 7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            )
          ),
          child:const Icon(Icons.person_2_outlined,color: Colors.white,), 
        ),
       
        const Text('Tojan Naiem',style: TextStyle(color: Colors.white),),
        IconButton(onPressed: (){}, icon:const  Icon(Icons.arrow_drop_down_outlined,color: Colors.white,))
      ],
    


    );

  }
}