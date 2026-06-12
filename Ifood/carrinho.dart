import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Colors.red,),),
        title: Text("SACOLA", style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          TextButton(onPressed: (){}, 
            child: Text("Limpar", 
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16)))
        ],
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),

                //nome do restaurante, foto dele
                Column(
                  children: [

                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 16),
                      child: Container(
                        height: 24,
                        width: 250,
                        child: Text("Mcdonald's", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16), textAlign: TextAlign.left,),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 16),
                      child: Container(
                        height: 24,
                        width: 250,
                        child: Text("Adicionar mais itens", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.red)),
                      ),
                    ),
                  ],
                ),
              ],
              //fim do nome do restaurante
            ),),

            SizedBox(height: 32,),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
              child: Container(
              child: Text("Itens adicionados", style: TextStyle(fontWeight: FontWeight.bold),),
            ),),
            SizedBox(height: 8,),

            //Itens do carrinho
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      //icone da comida com o icon de edit
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 28,
                      ),
                      //botao de edit
                      Positioned(
                        left: 24,
                        top: -8,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(Icons.edit, color: Colors.red, size: 24,),
                        )
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 12),
                        child: Container(
                          width: 230,
                          height: 24,
                          child: Text("Big Mac", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),),

                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 12),
                        child: Container(
                          width: 230,
                          height: 24,
                          child: Text("Dois hambúrgueres (100% carne...", style: TextStyle(fontWeight: FontWeight.w300),),
                        ),),

                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 12),
                        child: Container(
                          width: 230,
                          height: 24,
                          child: Text("R\$ 29,90", style: TextStyle(fontWeight: FontWeight.w500),),
                        ),),
                    ],
                  ),

                  Container(child: Text("Caixa (WIP)"),),
                ],
              ),),

              SizedBox(height: 32,),

              Align(
                alignment: Alignment.center,
                child: Text("Adicionar mais itens", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
              ),

              SizedBox(height: 32,),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                child: Text("Peça Também", style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(8, (_) =>
                        Column(
                          children: [
                            Stack(
                              children: [

                                Padding(
                                  padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
                                  child: Container(
                                    width: 128,
                                    height: 128,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(16)
                                      ),),
                                ),

                                Positioned(
                                  bottom: 5,
                                  right: 15,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.add, color: Colors.red,),
                                  )
                                )
                              ],
                            ),

                            Container(
                              width: 128,
                              child: Text("R\$ 23,90", style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Container(
                              width: 128,
                              child: Text("Comida Recomendada", style: TextStyle(fontWeight: FontWeight.w300),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),),



                  SizedBox(height: 48,),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Container(
                      width: double.infinity,
                      child: Text("Resumo de valores", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                    ),),
                    SizedBox(height: 16,),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 320,
                          child: Text("Subtotal", style: TextStyle(fontWeight: FontWeight.w300)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("R\$ 29,90", style: TextStyle(fontWeight: FontWeight.w300)),
                        )
                      ],
                    ),),

                  SizedBox(height: 8,),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 320,
                          child: Text("Taxa de entrega", style: TextStyle(fontWeight: FontWeight.w300)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("R\$ 16,99", style: TextStyle(fontWeight: FontWeight.w300)),
                        )
                      ],
                    ),),

                SizedBox(height: 90,),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 140,
                            child: Text("Total com a entrega", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                child: Text("R\$ 19,89"),
                              ),
                              Container(
                                width: 80,
                                child: Text("/1 item", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: 230,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,

                        ),

                        child: Text("Continuar")),)
                    ],
                  ),)


        ],
      ),
    );
  }
}