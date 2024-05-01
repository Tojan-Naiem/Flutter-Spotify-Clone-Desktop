import 'package:flutter/material.dart';
import 'package:spotify_clone_desktop/models/song.dart';
import 'package:spotify_clone_desktop/playlistScreen.dart';
import 'package:spotify_clone_desktop/widget/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:Row(
              children: [
               Menu(),
               Expanded(
                child:  PlaylistScreen(Song.playlists[5]),
               )
              
              ],
            )
             ),
             Container(
              width: double.infinity,
              height: 82,
              color: Colors.black,
             )
        ],
      ),
    );
  }
}