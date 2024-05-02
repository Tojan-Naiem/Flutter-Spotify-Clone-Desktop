import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ElevatedButton( 
              child: Text('PLAY',style: TextStyle(color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.normal,fontSize: 13),),
              onPressed: (){},
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(24, 216, 96, 0.9),
              fixedSize: Size(120, 30),
              
             ),
            ),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,color: Colors.white,)),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz,color: Colors.white,)),
          ],
        ),
       const Text('FOLOWERS\n2,354,454',style: TextStyle(color:  Color.fromRGBO(255, 255, 255, 0.5),fontFamily: 'Montserrat',fontSize: 13),)
      ],
    );
  }
}