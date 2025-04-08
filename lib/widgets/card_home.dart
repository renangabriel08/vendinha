import 'package:flutter/material.dart';
import 'package:vendinha/styles/styles.dart';

class CardHome extends StatelessWidget {
  final String imgPath;
  final String titulo;
  final int quantidade;
  const CardHome({
    super.key,
    required this.imgPath,
    required this.titulo,
    required this.quantidade,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Cores.branco,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(150, 0, 0, 0),
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Image.asset(imgPath),
              Container(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 16,
                      color: Cores.cinza,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    quantidade.toString(),
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
        ),
      ),
    );
  }
}
