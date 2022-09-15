import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Global.dart';

class IosChatsPage extends StatefulWidget {
  const IosChatsPage({Key? key}) : super(key: key);

  @override
  State<IosChatsPage> createState() => _IosChatsPageState();
}

class _IosChatsPageState extends State<IosChatsPage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      navigationBar: const CupertinoNavigationBar(
        leading: Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 90),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "Broadcast Lists",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5),
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...Global.allcontacts
                .map(
                  (e) => Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.whatsapp),
                            ),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              e['des'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(e['time']),
                        const SizedBox(width: 20),
                        const Icon(
                          CupertinoIcons.volume_off,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
            )
                .toList(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}