import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/ChatListElement.dart';
import 'package:whatsappclone/widgets/statusWidget.dart';
import 'ChatListElement.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 80,
          width: double.infinity,
          color: Color.fromARGB(255, 242, 237, 239),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/somesh.jpg",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_rounded,
                      color: Colors.blue,
                    )),
              ]),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 2),
                    child: Text(
                      "My Status",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
                    child: Text(
                      "Tap to add status update",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8, 4, 10, 4),
          child: Text(
            "Recent Update",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
