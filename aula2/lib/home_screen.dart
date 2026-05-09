import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estrutura do Scaffold"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(8, (_) =>
                Container(
                  width: 64,
                  height: 64,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(10, (_) =>
                  Container(
                    width: double.infinity,
                    height: 160,
                    margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container()
      ),
      endDrawer: Drawer(
        child: Container()
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ]),
      bottomSheet: SizedBox(
        height: 40,
        child: Text("Rodapé"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){}),
    );
  }
}