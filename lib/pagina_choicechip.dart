import 'package:flutter/material.dart';

class PaginaChoiceChip extends StatefulWidget {
  const PaginaChoiceChip({Key? key}) : super(key: key);

  @override
  State<PaginaChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<PaginaChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choice Chip')),
      body: Center(
        child: ChoiceChip(
          avatar: const Icon(Icons.ac_unit),
          label: const Text('Choice Chip'),
          selected: _isSelected,
          onSelected: (newBoolValue) {
            setState(() {
              _isSelected = newBoolValue;
            });
          },
        ),
      ),
    );
  }
}
