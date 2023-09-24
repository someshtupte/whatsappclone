import 'package:flutter/material.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  List<String> chats = <String>[
    "Somesh",
    "Gunjan",
    "Jatin",
    "Sanskruti",
    "Kaveri",
    "Raju",
    "Kartik",
    "R;aljfla",
    "alkj;fl;ajf",
    "Dushyant",
    "Ramu Sureh Kaka"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return Text("Status $index");
          }),
    );
  }
}
