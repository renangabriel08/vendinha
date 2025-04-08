import 'package:flutter/material.dart';
import 'package:vendinha/styles/styles.dart';

class CardProduto extends StatelessWidget {
  const CardProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/01.png'),
            Text(
              '6x',
              style: TextStyle(
                color: Cores.preto,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(66, 25, 153, 70),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Pago',
                  style: TextStyle(
                    color: Cores.verde,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Text(
              '23/03/25',
              style: TextStyle(
                color: Cores.preto,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(height: 16),
        Divider(color: Cores.cinza, height: 2),
        Container(height: 16),
      ],
    );
  }
}
