import 'package:flutter/material.dart';
import 'package:vendinha/styles/styles.dart';

class HeaderMaisVendidos extends StatelessWidget {
  const HeaderMaisVendidos({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Produtos mais vendidos',
                  style: TextStyle(
                    color: Cores.preto,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Top 5 produtos',
                  style: TextStyle(
                    fontSize: 16,
                    color: Cores.cinza,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset('assets/filtro.png'),
          ],
        ),
      ),
    );
  }
}
