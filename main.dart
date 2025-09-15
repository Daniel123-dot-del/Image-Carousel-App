import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Image Carousel App',
      Theme: Theme(
          primarySwacth: Colors.blue
      ), // Theme Data
      home: HomePage(),
    ); // MaterialApp
  }
}

class Homepage extends StatelessWidget{

  final list imageUrls = [
        'https://picsum.photos/400/300?random=1'
        'https://picsum.photos/400/300?random=2'
        'https://picsum.photos/400/300?random=3'
        'https://picsum.photos/400/300?random=4'
        'https://picsum.photos/400/300?random=5'
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text ('My Photo Gallery'),
        bsckgroundColor: Colors.blue,
      ), // AppBar

      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index){
                return Container(
                  child: ClipRRect(
                    borderRaduis: BorderRaduis.circular(10),
                    child: Image.network(
                      imageUrls[index],
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ), // Image Network
                  ),// ClipRRect
                ), // Container

                Padding(padding: EdgeInsets.all(16, 0)
                child: Column(
                children: [
                  Text('Image Gallery',
                  style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                ),
                  SizedBox(height: 8),
                  Text('These Amazing Photos'
                  fontSize: 16,
                  color: Colors.grey(600),
                ), // Text Style
                  textAlign: TextAlign.center,
                ),
                ]
                ),
                ),
              }
            ),
          )
        ],
      ), // Column
    ); // Scaffold
  }

}
