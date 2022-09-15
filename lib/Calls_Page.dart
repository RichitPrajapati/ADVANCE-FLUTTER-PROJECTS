import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Global.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: Global.allcontacts
              .map(
                (e) =>
                ListTile(
                  leading: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.whatsapp,color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  title: Text(
                    e['name'],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: Colors.green,
                      ),
                      Text(
                        e['time'],
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green.shade700,
                  ),
                ),
          )
              .toList(),
        ),
      ),
    );
  }
}