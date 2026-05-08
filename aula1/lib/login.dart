import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), //APPBAR recebe uma classe
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem vindo ao App',
            style: TextStyle(
              color: 
               Colors.blueAccent, 
                fontSize: 24 
              )
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24)
                ),
                labelText:  "Digite o email"
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24)
                ),
                labelText: "Digite sua senha"
              )
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 50,
              width: double.infinity, //100%
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home())
                  );
                },
                child: Text('Entrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  )
                )
              ),
            ),
          ],
        ),
      )
        
      // bottomNavigationBar: ,
    );
  }
}