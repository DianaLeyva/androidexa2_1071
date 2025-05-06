import 'package:flutter/material.dart';

import 'pagina_appbar.dart';
import 'pagina_checkboxlisttile.dart';
import 'pagina_choicechip.dart';
import 'pagina_clipoval.dart';
import 'pagina_floatingactionbutton.dart';
import 'pagina_material.dart';
import 'pagina_pageview.dart';
import 'pagina_safearea.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú de Widgets',
      home: MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  final List<Map<String, dynamic>> paginas = [
    {'titulo': 'AppBar', 'widget': PaginaAppBar()},
    {'titulo': 'CheckboxListTile', 'widget': PaginaCheckboxListTile()},
    {'titulo': 'ChoiceChip', 'widget': PaginaChoiceChip()},
    {'titulo': 'ClipOval', 'widget': PaginaClipOval()},
    {'titulo': 'FloatingActionButton', 'widget': PaginaFloatingActionButton()},
    {'titulo': 'Material', 'widget': PaginaMaterial()},
    {'titulo': 'PageView', 'widget': PaginaPageView()},
    {'titulo': 'SafeArea', 'widget': PaginaSafeArea()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú de Ejemplos')),
      body: ListView.builder(
        itemCount: paginas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(paginas[index]['titulo']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => paginas[index]['widget'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
