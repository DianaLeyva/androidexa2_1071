import 'package:flutter/material.dart';

class PaginaCheckboxListTile extends StatefulWidget {
  const PaginaCheckboxListTile({Key? key}) : super(key: key);

  @override
  State<PaginaCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<PaginaCheckboxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxListTile')),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List Time'),
          subtitle: const Text('Subtitle'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          activeColor: Colors.yellow,
          checkColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}
