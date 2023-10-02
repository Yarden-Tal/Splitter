import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BillSection extends StatefulWidget {
  const BillSection({super.key});

  @override
  State<BillSection> createState() => _BillSectionState();
}

class _BillSectionState extends State<BillSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Bill'),
        TextField(
          textAlign: TextAlign.right,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
          ],
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            prefixIcon: Text("\$"),
          ),
        ),
      ],
    );
  }
}
