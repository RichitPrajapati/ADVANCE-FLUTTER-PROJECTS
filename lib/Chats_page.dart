import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Global.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...Global.allcontacts
                .map(
                  (e) => ListTile(
                leading: Container(
                  child: CircleAvatar(
                    radius:30,
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
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  e['des'],
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Text(
                  e['time'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
                .toList(),
          ],
        ),
      ),
    );
  }
}