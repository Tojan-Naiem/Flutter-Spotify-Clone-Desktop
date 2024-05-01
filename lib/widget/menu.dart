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
                      const SizedBox(height: 5,),
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
   const SideMenuIconTap({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(icon,color: Colors.white,),
      title:  Text(title,style:const TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontSize: 13)),
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

  ScrollController? _ScrollController;
  
  void init(){
    super.initState();
    _ScrollController=ScrollController();
  }
  void dispose(){
    _ScrollController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child:RawScrollbar(
        thumbColor: Colors.grey,

        controller:ScrollController(),
        child: ListView(
         padding: const EdgeInsets.symmetric(vertical: 12),
         physics: const ClampingScrollPhysics(),
         children: [
          
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
           
          const Padding(
            padding:  EdgeInsets.only(left: 15,bottom: 10),
          child:  Text('YOUR LIBRARY',style: TextStyle(fontFamily:'Montserrat',fontSize: 12,color:  Color.fromRGBO(255, 255, 255, 0.7), ),),
          ),
          
           for(int i=0;i<Song.yourLibrary.length;i++)buildListTile(Song.yourLibrary[i]),
          const  Padding(
            padding:  EdgeInsets.only(left: 15,bottom: 10,top: 15),
          child:  Text('PLAYLISTS',style: TextStyle(fontFamily:'Montserrat',fontSize: 12,color:  Color.fromRGBO(255, 255, 255, 0.7), ),),
          ),
          for(int i=0;i<Song.playlists.length;i++)buildListTile(Song.playlists[i]),
         ],)
         
        
         ],
         
            ),
            
      )
    );
  }
  ListTile buildListTile(String s){

    return ListTile(
      title: Text(s,style:const TextStyle(color: Color.fromARGB(247, 255, 255, 255),fontFamily:'Montserrat',fontSize: 11),),
      dense: true,
      onTap: (){},
    );

  }
}