import 'package:flutter/material.dart';
import 'package:spotify_clone_desktop/models/song.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 280,
                  height:double.infinity,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 10,right: 50),
                        child:Image.asset("images/Spotify.png",height: 55,filterQuality: FilterQuality.high,) ,
                        
                      ),
                      SideMenuIconTap(
                      title: 'Home',
                      icon: Icons.home,
                      onTap: (){},
                      ),
                      SideMenuIconTap(
                      title: 'Search',
                      icon: Icons.search,
                      onTap: (){},
                      ),
                      SideMenuIconTap(
                      title: 'Radio',
                      icon: Icons.music_note,
                      onTap: (){},
                      ),
                      const SizedBox(height: 12,),
                      LibraryPlayList()
                      
                    ],
                  ),
                );
    
  }
}

class SideMenuIconTap extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
   SideMenuIconTap({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon,color: Colors.white,),
      title:  Text(title,style:TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontSize: 13)),
      onTap: onTap,
    
    );
  }
}


class LibraryPlayList extends StatefulWidget {
  const LibraryPlayList({super.key});

  @override
  State<LibraryPlayList> createState() => _LibraryPlayListState();
}

class _LibraryPlayListState extends State<LibraryPlayList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
       padding: const EdgeInsets.all(5),
       physics: const ClampingScrollPhysics(),
       children: [
         Text('YOUR LIBRARY',style: TextStyle(fontFamily:'Montserrat',fontSize: 15,color: Colors.white ),),
         for(int i=0;i<Song.yourLibrary.length;i++)buildListTile(Song.yourLibrary[i])

       ],
    );
  }
  ListTile buildListTile(String s){

    return ListTile(
      title: Text(s,style: TextStyle(color: Colors.white,fontFamily:'Montserrat',fontSize: 15),),
    );

  }
}