import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'services/tema.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

const String assetName = 'assets/imagens/menu.svg';
final Widget svgIcon = SvgPicture.asset(assetName,
    color: Colors.red, semanticsLabel: 'A red up arrow');

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Inicial'),
        actions: [
          SvgPicture.asset(
            assetName,
            color: Colors.orange,
          ),
          IconButton(
            onPressed: () => {
              tema(),
            },
            icon: const Icon(Icons.lightbulb),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
//              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
              child: const Text('Pagina 1'),
            ),
          ],
        ),
      ),
    );
  }
}

teste() {
  ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 7,
      fixedSize: const Size(220, 35),
      primary: const Color(0xFF48426D),
      onSurface: Colors.black,
    ),
    onPressed: () {},
    child: const Text('Pagina 1'),
  );
}
