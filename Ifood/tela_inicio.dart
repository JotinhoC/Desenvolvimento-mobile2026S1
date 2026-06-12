import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  int _abaSelecionada = 0; // barra de navegação
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 1. CABEÇALHO (APPBAR)
      // Utilizamos o AppBar nativo, mas customizamos a altura e removemos
      // a sombra (elevation: 0) para integrar perfeitamente com o fundo branco.
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bom dia, Artur',
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Text(
                  'R. Argemiro de Barros, 20',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFFEA1D2C), // Vermelho característico da marca
                  size: 20,
                ),
              ],
            ),
          ],
        ),
        actions: [
          // Área de ícones de perfil/benefícios
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.purple.shade50,
              radius: 18,
              child: Icon(
                Icons.diamond_outlined,
                color: Colors.purple,
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              radius: 18,
              child: Icon(
                Icons.notifications_none,
                color: Colors.black87,
                size: 22,
              ),
            ),
          ),
        ],
      ),

      // Scroll vertical
    
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Chamadas das funções auxiliares de construção de UI.
                      // Isso mantém o método 'build' limpo e legível.
                      _construirCategoria(
                        'Restaurantes',
                        Icons.restaurant,
                        Colors.orange.shade100,
                        corIcone: Colors.orange.shade800,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Mercados',
                        Icons.shopping_basket,
                        Colors.green.shade100,
                        corIcone: Colors.green.shade800,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Farmácias',
                        Icons.medical_services,
                        Colors.pink.shade100,
                        corIcone: Colors.pink.shade800,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Bebidas',
                        Icons.local_bar,
                        Colors.red.shade100,
                        corIcone: Colors.red.shade800,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Viagens',
                        Icons.flight,
                        Colors.purple.shade100,
                        corIcone: Colors.purple.shade800,
                        isNovo: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      _construirCategoria(
                        'Corridas',
                        Icons.local_taxi,
                        Colors.grey.shade200,
                        corIcone: Colors.black87,
                        isNovo: true,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Promoções',
                        Icons.local_offer,
                        Colors.red.shade100,
                        corIcone: Colors.red.shade800,
                        isNovo: true,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Gourmet',
                        Icons.room_service,
                        Colors.brown.shade100,
                        corIcone: Colors.brown.shade800,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Missões',
                        Icons.track_changes,
                        Colors.deepOrange.shade100,
                        corIcone: Colors.deepOrange.shade800,
                        isNovo: true,
                      ),
                      SizedBox(width: 15),
                      _construirCategoria(
                        'Ver mais',
                        Icons.grid_view,
                        Colors.grey.shade100,
                        corIcone: Colors.black54,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Carrosel de Baners
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  _construirBannerPromocional(),
                  SizedBox(width: 15),
                  _construirBannerPromocional(),
                ],
              ),
            ),

            // Indicadores visuais de página (bolinhas do carrossel)
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _bolinhaIndicadora(ativa: true),
                _bolinhaIndicadora(ativa: false),
                _bolinhaIndicadora(ativa: false),
                _bolinhaIndicadora(ativa: false),
                _bolinhaIndicadora(ativa: false),
              ],
            ),

            SizedBox(height: 25),

            // Cards Destaque
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  _construirCardDestaque(
                    'padarias\nabertas',
                    Colors.orange.shade700,
                    Icons.bakery_dining,
                  ),
                  SizedBox(width: 12),
                  _construirCardDestaque(
                    'padaria\ncom entrega grátis',
                    Colors.teal.shade800,
                    Icons.local_shipping,
                  ),
                  SizedBox(width: 12),
                  _construirCardDestaque(
                    'vem que\naqui tem promoções',
                    Colors.red.shade700,
                    Icons.percent,
                  ),
                ],
              ),
            ),

            SizedBox(height: 35),

            // Marcas famosas
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Famosos no iFood',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Color(0xFFEA1D2C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
              child: Text(
                'Marcas famosas',
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  _construirLojinhaFamosa("Mcdonald's", Colors.red, "M"),
                  SizedBox(width: 18),
                  _construirLojinhaFamosa("Duckbill", Colors.black, "DB"),
                  SizedBox(width: 18),
                  _construirLojinhaFamosa("Sobremesas", Colors.amber, "M"),
                  SizedBox(width: 18),
                  _construirLojinhaFamosa("Chickens", Colors.orange, "C"),
                  SizedBox(width: 18),
                  _construirLojinhaFamosa("Vila Colonial", Colors.brown, "VC"),
                ],
              ),
            ),

            SizedBox(height: 35),

            // Seção Restaurante
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Restaurantes com Cupom',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Color(0xFFEA1D2C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
              child: Text(
                'Ad',
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  _construirCardRestaurante(
                    'Manga Moranga SR',
                    '5.0',
                    '100 min',
                    'R\$ 13,00',
                    'Ganhe entrega grátis',
                    Colors.orange.shade200,
                  ),
                  _construirCardRestaurante(
                    'Vila Colonial dos Pães',
                    '4.7',
                    '50 min',
                    'R\$ 17,90',
                    'Cupom de R\$ 10',
                    Colors.brown.shade200,
                  ),
                  _construirCardRestaurante(
                    'Pizzaria Di Napolli',
                    '4.9',
                    '40 min',
                    'Grátis',
                    'Ganhe entrega grátis',
                    Colors.red.shade200,
                  ),
                ],
              ),
            ),

            SizedBox(height: 35),

            //  Lista de lojas vertical
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: Text(
                'Lojas',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  _construirItemLoja(
                    'Manga Moranga SR',
                    '5.0',
                    'Lanches',
                    '90-100 min',
                    'R\$ 13,00',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Vila Colonial dos Pães',
                    '4.7',
                    'Padaria',
                    '35-50 min',
                    'R\$ 5 off',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Duckbill São Roque',
                    '4.8',
                    'Cafeteria',
                    '30-40 min',
                    'Grátis',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Burguer King',
                    '4.3',
                    'Fast Food',
                    '25-35 min',
                    'Grátis',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Subway Centro',
                    '4.6',
                    'Sanduíches',
                    '15-25 min',
                    'R\$ 6,00',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Padaria do João',
                    '4.9',
                    'Padaria',
                    '10-20 min',
                    'Grátis',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Sushiloko',
                    '4.4',
                    'Japonesa',
                    '50-60 min',
                    'R\$ 15,00',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Habib\'s Avenida',
                    '4.2',
                    'Árabe',
                    '40-50 min',
                    'Grátis',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Lanchonete Avenida',
                    '4.5',
                    'Lanches',
                    '20-30 min',
                    'R\$ 5,00',
                  ),
                  Divider(color: Colors.black12, height: 30),
                  _construirItemLoja(
                    'Pizza Hut',
                    '4.1',
                    'Pizza',
                    '55-65 min',
                    'Grátis',
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),

      // 3. Barra de navegação

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _abaSelecionada,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.shade400,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        onTap: (index) {
          // Atualiza a interface quando uma nova aba é clicada
          setState(() {
            _abaSelecionada = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  // FUNÇÕES

  /// Constrói os ícones de categoria com a funcionalidade opcional de "selo de novo"
  Widget _construirCategoria(
    String titulo,
    IconData icone,
    Color corFundo, {
    required Color corIcone,
    bool isNovo = false,
  }) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: corFundo,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icone, color: corIcone, size: 30),
              ),
              if (isNovo)
                Positioned(
                  bottom: -8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFFEA1D2C),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Novo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            titulo,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Constrói os banners  utilizando posicionamento absoluto
  Widget _construirBannerPromocional() {
    return Container(
      width: 330,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFFEA1D2C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            right: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'vem fazer gol',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  'tudo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                Text(
                  'a partir de R\$ 0,90',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: -20,
            bottom: -20,
            child: Icon(Icons.fastfood, size: 140, color: Colors.white),
          ),
        ],
      ),
    );
  }

  ///sistema de paginação visual (bolinhas)
  Widget _bolinhaIndicadora({required bool ativa}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: ativa ? 6 : 5,
      height: ativa ? 6 : 5,
      decoration: BoxDecoration(
        color: ativa ? Colors.black54 : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }

  /// Os cards verticais coloridos com marca d'água do ícone
  Widget _construirCardDestaque(String texto, Color corFundo, IconData icone) {
    return Container(
      width: 140,
      height: 160,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Text(
            texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(icone, size: 50, color: Colors.white),
          ),
        ],
      ),
    );
  }

  /// UI das logomarcas das franquias utilizando
  Widget _construirLojinhaFamosa(String nome, Color corLogo, String iniciais) {
    return SizedBox(
      width: 85,
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey.shade100,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: corLogo,
              child: Text(
                iniciais,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            nome,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Cards dos restaurantes contendo dados sobrepostos na imagem de capa
  Widget _construirCardRestaurante(
    String nome,
    String nota,
    String tempo,
    String frete,
    String tagCupom,
    Color corCapa,
  ) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: corCapa,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.fastfood, color: Colors.white54, size: 40),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 12),
                      SizedBox(width: 4),
                      Text(
                        nota,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.store, size: 14, color: Colors.black54),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  nome,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            '$tempo • $frete',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.local_offer, color: Colors.green.shade700, size: 12),
                SizedBox(width: 4),
                Text(
                  tagCupom,
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Blocos das listagens verticais utilizando alinhamentos Flexíveis (Row e Expanded)
  Widget _construirItemLoja(
    String nome,
    String nota,
    String categoria,
    String tempo,
    String frete,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade100,
          child: Icon(Icons.store, color: Colors.black54, size: 25),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // O Expanded garante que nomes grandes não quebrem o layout (Overflow)
                  Expanded(
                    child: Text(
                      nome,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.grey, size: 20),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 14),
                  SizedBox(width: 4),
                  Text(
                    nota,
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    ' • $categoria',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                '$tempo • $frete',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
