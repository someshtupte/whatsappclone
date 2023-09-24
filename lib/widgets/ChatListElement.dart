import 'package:flutter/material.dart';

class ChatListElement extends StatefulWidget {
  int index;
  ChatListElement({super.key, required this.index});

  @override
  State<ChatListElement> createState() => _ChatListElementState();
}

class _ChatListElementState extends State<ChatListElement> {
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
  List<String> chatMessages = <String>[
    "Hello",
    "Kkrh",
    "Good Morning",
    "Whats App ",
    "Whatever you do ti well",
    "...........",
    "!FWQGESTHDFVFDSNDSBDFBSDF",
    "Multiple fragramces, ",
    "Availabe in [BOx an",
    "SHrikrupa"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/myimage.jpg',
                    width: 60, height: 60, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 8, 0),
                child: Column(
                  children: [
                    Text(
                      chats[widget.index],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      textAlign: TextAlign.left,
                      chatMessages[widget.index],
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
