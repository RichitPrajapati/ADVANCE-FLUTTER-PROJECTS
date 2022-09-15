import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Global.dart';

class IosCallsPage extends StatefulWidget {
  const IosCallsPage({Key? key}) : super(key: key);

  @override
  State<IosCallsPage> createState() => _IosCallsPageState();
}

class _IosCallsPageState extends State<IosCallsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      navigationBar: const CupertinoNavigationBar(
        leading: Text(
          "Calls",
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
            ...Global.allcontacts
                .map(
                  (e) =>
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: [
                             Container(
                               child: Padding(
                                padding: EdgeInsets.all(8),
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
                                Row(
                                  children: const [
                                    Icon(CupertinoIcons.phone_arrow_up_right),
                                    SizedBox(width: 5),
                                    Text(
                                      "Outgoing",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(e['time']),
                            const SizedBox(width: 20),
                            const Icon(CupertinoIcons.exclamationmark_circle),
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