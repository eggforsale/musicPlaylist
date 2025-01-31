import 'package:article_card/music_card.dart';
import 'package:article_card/music_playlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:   Color.fromARGB(255, 15, 37, 15)),
        useMaterial3: true,
      ),
      home: const ArticleList(),
    );
  }
}

class ArticleList extends StatefulWidget {
  const ArticleList({super.key});

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  List musicPlayList = [
    MusicPlayList(
      num: 1,
      title: 'Snooze',
      author: 'SZA',
      album: 'SOS',
      duration: '3:22',
      ),
    MusicPlayList(
      num: 2,
      title: 'Bleeding Love',
      author: 'Leona Lewis',
      album: 'Spirit',
      duration: '4:23',
      ),
    MusicPlayList(
      num: 3,
      title: 'The Scientist',
      author: 'Coldplay',
      album: 'A Rush of Blood to the',
      duration: '5:09',
      ),
    MusicPlayList(
      num: 4,
      title: 'Party in the USA',
      author: 'Miley Cyrus',
      album: 'The Time of Our Lives',
      duration: '3:22',
      ),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color.fromARGB(255, 15, 37, 15),
      appBar:  AppBar(
        title: Text('Music PlayList', style: TextStyle(color:  Colors.white,fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: true,
        backgroundColor:  Theme.of(context).colorScheme.primary,
      ),
      body: Column(children: 
        musicPlayList.map((music)=>
        MusicCard(music: music, delete: () {
          setState(() {
            musicPlayList.remove(music);
          });
        },)).toList(),
      ),
    );
  }
}
