import 'package:flutter/material.dart';

class CarroselScreen extends StatefulWidget {
  const CarroselScreen({super.key});

  @override
  State<CarroselScreen> createState() => _CarroselScreenState();
}

class _CarroselScreenState extends State<CarroselScreen> {
  final List<String> imgs = [
    "images/image1.jpg",
    "images/image1.jpg",
    "images/image1.jpg",
    "images/image1.jpg",
    "images/image1.jpg",
    "images/image1.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Carrosel CarouselView simples"),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: CarouselView(
                itemExtent: double.infinity, 
                children: [
                  Container(height: 200, color: Colors.amber,),
                  Container(height: 200, color: Colors.deepOrange,),
                  Container(height: 200, color: Colors.red,),
                  Container(height: 200, color: Colors.pink,),
                ]
              ),
            ),

            SizedBox(height: 30,),
            Text("Carrosel CarouselView.weightd"),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: CarouselView.weighted(
                flexWeights: [1, 7, 1], 
                children: [
                  Image.asset("images/image1.jpg"),
                  Image.asset("images/image1.jpg"),
                  Image.asset("images/image1.jpg"),
                  Image.asset("images/image1.jpg"),
                  Image.asset("images/image1.jpg"),
                  Image.asset("images/image1.jpg"),
                ]
              ),
            ),

            Text(""),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: CarouselView.builder(
                itemExtent: 350,
                itemCount: imgs.length,
                itemBuilder: (context, index) => Image.asset(imgs[index]), 
              ),
            ),


          ],
        ),
      ),
    );
  }
}