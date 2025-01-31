import 'package:article_card/music_playlist.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final MusicPlayList music;
  final VoidCallback delete;
  const MusicCard({
    super.key, required this.music, required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(12.0, 5, 12.0, 0),
      color:  Color.fromARGB(31, 51, 38, 38),
      child:Container(
        padding: EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0),
                    Text('${music.num}',
                     style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 196, 187, 187), fontWeight: FontWeight.bold,),),
                    SizedBox(height: 0),
                    Text(' ${music.title}',
                     style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.bold,),),
                     SizedBox(height: 0),
                    Text(' ${music.author}',
                     style: TextStyle(fontSize: 21, color:  Color.fromARGB(255, 196, 187, 187,), fontWeight: FontWeight.bold,),),
                     SizedBox(height: 1),
                    Text(' ${music.album}',
                     style: TextStyle(fontSize: 19, color: Color.fromARGB(255, 196, 187, 187),fontWeight: FontWeight.bold,),),
                     SizedBox(height: 1),
                    Text(' ${music.duration}',
                     style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 196, 187, 187), fontWeight: FontWeight.bold,),),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.play_arrow, color: Colors.green, size: 40),
                    onPressed: () {
                      print("Play Music");
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red, size: 30),
                    onPressed: delete,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
