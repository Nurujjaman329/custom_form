import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Row(
        children: [
          Text("First"),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Text("2nd"),
          SizedBox(
            width: 10,
          ),
          Text("3rd"),
        ],
      ),
    );
  }
}
