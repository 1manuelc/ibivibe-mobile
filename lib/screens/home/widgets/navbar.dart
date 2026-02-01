import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _index = 1;

  @override
  Widget build(BuildContext context) => FBottomNavigationBar(
    safeAreaBottom: true,
    index: _index,
    onChange: (index) => setState(() => _index = index),
    children: const [
      FBottomNavigationBarItem(icon: Icon(FIcons.house), label: Text('Início')),
      FBottomNavigationBarItem(
        icon: Icon(FIcons.search),
        label: Text('Buscar'),
      ),
      FBottomNavigationBarItem(
        icon: Icon(FIcons.heart),
        label: Text('Favoritos'),
      ),
      FBottomNavigationBarItem(icon: Icon(FIcons.user), label: Text('Perfil')),
    ],
  );
}
