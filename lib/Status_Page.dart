import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Global.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        onPressed: () {},
        child: Icon(Icons.photo_camera),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: Icon(Icons.whatsapp_rounded,color: Colors.green,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text(
                "My status",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ...Global.allcontacts
                .map(
                  (e) => ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.whatsapp,color:Colors.green
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
                subtitle: Text(
                  e['time'],
                  style: TextStyle(
                    color: Colors.grey.shade700,
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