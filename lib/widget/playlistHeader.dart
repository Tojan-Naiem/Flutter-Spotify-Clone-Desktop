import 'package:flutter/material.dart';

class PlaylistHeader extends StatefulWidget {
  const PlaylistHeader({super.key});

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
          Image.asset(
            'images/lofigirl.jpg',
            height: 200,
            width: 200,
            fit: BoxFit.fitWidth,
          )
         
        ],
      ),
    );
  }
}
