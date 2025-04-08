import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vendinha/styles/styles.dart';
import 'package:vendinha/widgets/card_home.dart';
import 'package:vendinha/widgets/card_produto.dart';
import 'package:vendinha/widgets/header_mais_vendidos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 125,
        title: Row(
          children: [
            Image.asset('assets/perfil.png'),
            Container(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Olá, Samuel',
                  style: TextStyle(
                    fontSize: 16,
                    color: Cores.cinza,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Bem-vindo!',
                  style: TextStyle(
                    color: Cores.preto,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Image.asset('assets/dashboard.png', width: 25),
          Container(width: 16),
        ],
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(19, 0, 19, 24),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  CardHome(
                    imgPath: 'assets/pagas.png',
                    titulo: 'Vendas pagas',
                    quantidade: 242,
                  ),
                  CardHome(
                    imgPath: 'assets/nao_pagas.png',
                    titulo: 'Vendas não-pagas',
                    quantidade: 43,
                  ),
                  CardHome(
                    imgPath: 'assets/canceladas.png',
                    titulo: 'Vendas canceladas',
                    quantidade: 6,
                  ),
                  CardHome(
                    imgPath: 'assets/clientes.png',
                    titulo: 'Total de clientes',
                    quantidade: 291,
                  ),
                  Container(height: 40),
                  Row(
                    children: [
                      Text(
                        'Vendas a prazo',
                        style: TextStyle(
                          color: Cores.preto,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 16),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: 'Filtrar por',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'Mais recentes',
                        child: Text('Mais recentes'),
                      ),
                    ],
                    onChanged: (value) => (),
                  ),
                  Container(height: 16),
                  Row(
                    children: [
                      Text(
                        '25+ vendas a prazo feitas',
                        style: TextStyle(
                          color: Cores.azul,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 24),
                  for (int i = 0; i < 4; i++) CardProduto(),
                  HeaderMaisVendidos(),
                  Container(height: 32),
                  for (int i = 0; i < 4; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Coxinha',
                              style: TextStyle(
                                color: Cores.preto,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(height: 16),
                        LinearProgressIndicator(
                          color: Cores.amarelo,
                          value: .8,
                          backgroundColor: Cores.cinza,
                        ),
                        Container(height: 24),
                      ],
                    ),
                  Row(
                    children: [
                      Text(
                        'Gráfico de vendas a prazo',
                        style: TextStyle(
                          color: Cores.preto,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    height: width,
                    child: BarChart(
                      BarChartData(barGroups: [BarChartGroupData(x: 10)]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
