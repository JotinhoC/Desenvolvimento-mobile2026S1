import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                width: 200,
                child: Text("Pagamento pelo app", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              ),),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 212, 209, 209)
                ),
              ),),
              SizedBox(height: 32,),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                child: Text("Sua gorjeta faz diferença", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)), 
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                child: Text("Opção disponível apenas para pagamentos no cartão de crédito à vista", style: TextStyle(fontWeight: FontWeight.w300)), 
              ),

              SizedBox(height: 32,),

              //valor do checkout
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

                  SizedBox(height: 8,),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 315,
                          child: Text("Total", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("R\$ 46,89", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                        )
                      ],
                    ),),
                    SizedBox(height: 32,),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(Icons.list_alt, size: 32,),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 8),
                  child: Column(
                    children: [
                      Container(
                        width: 245,
                        child: Text("CPF na nota"),
                      ),
                      Container(
                        width: 245,
                        child: Text("Obrigatório", style: TextStyle(fontWeight: FontWeight.w300,)),
                      )
                  ],
                ),),

          Container(
            width: 90,
            child: TextButton(onPressed: (){}, child: Text("Adicionar", style: TextStyle(color: Colors.red),)),
          )
                
              ],
            ),)
        ],

      ),
      bottomSheet: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red
            ),
            child: Text("Adicionar CPF")),
      ))
      
      
      
      
      
      
    );
  }
}