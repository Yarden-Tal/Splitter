import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PeopleSection extends StatefulWidget {
  const PeopleSection({super.key});

  @override
  State<PeopleSection> createState() => _PeopleSectionState();
}

class _PeopleSectionState extends State<PeopleSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('People'),
        TextField(
          textAlign: TextAlign.right,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          ],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_2),
          ),
        ),
      ],
    );
  }
}
