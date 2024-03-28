import 'package:flutter/material.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}):super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Stack(
          children: [Container(
            margin: const EdgeInsets.only(bottom: 23, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:[
                BoxShadow(
                  offset: Offset(0, 10),
                  color: Colors.grey.shade300,
                  blurRadius: 30
                )
              ]
            ),
            padding: const EdgeInsets.all(20),
            child: InkWell(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Giang', style:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold)
                        )
          
                      ],
                    )
                  ],
                ),
              )
            )
          )],
        );
    });
  }
}