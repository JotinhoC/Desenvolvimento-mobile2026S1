import 'package:flutter/material.dart';

class ListaProdutos extends StatefulWidget {
  const ListaProdutos({super.key});

  @override
  State<ListaProdutos> createState() => _ListaProdutosState();
}

class _ListaProdutosState extends State<ListaProdutos> {
  final double coverHeight = 150;
  final double perfilRadius = 40;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - perfilRadius;
    return Scaffold(
      appBar: AppBar(

        leading:  Padding(padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: const Color.fromARGB(150, 0, 0, 0),
          child: IconButton(alignment: Alignment.center, onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        ),),
        
        
        

        actions: [

          RawMaterialButton(
            onPressed: (){},
            elevation: 1.0,
            fillColor: Color.fromARGB(150, 0, 0, 0),
            shape: CircleBorder(),
            padding: EdgeInsets.all(8),
            child: Icon(Icons.favorite_border, color: Colors.white,),
          ),

          RawMaterialButton(
            onPressed: (){},
            elevation: 1.0,
            fillColor: Color.fromARGB(150, 0, 0, 0),
            shape: CircleBorder(),
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search, color: Colors.white,),
          ),

        ],
      ),

    body: Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        buildCover(),
        Positioned(
          top: top,
          child: buildImagemPerfil()),
      ],
    )
    /*Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [


            
            Padding(padding: EdgeInsetsGeometry.all(16),
              child: Container(
                width: double.infinity,
                height: 256,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(24),
                ),
              )
            ),
            
          ],
         
        )
      ],
    ),*/

    );
  }

  Widget buildCover() => Container(
    color: Colors.grey,
    child: Image.asset("assets/images/pizzaCover.jpg",
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover,),
  );

  Widget buildImagemPerfil() => CircleAvatar(
    backgroundColor: Colors.grey,
    backgroundImage: AssetImage("assets/images/pizzaria.png"),
    radius: perfilRadius,
  );

  Widget buildMenuInfo() => Container(

  );
}