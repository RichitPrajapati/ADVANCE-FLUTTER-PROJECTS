import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IosSettingPage extends StatefulWidget {
  const IosSettingPage({Key? key}) : super(key: key);

  @override
  State<IosSettingPage> createState() => _IosSettingPageState();
}

class _IosSettingPageState extends State<IosSettingPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(Icons.whatsapp),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Richit Prajapati",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Hey there!",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.qr_code_scanner,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.message,
                        color: Colors.amber,
                      ),
                    ),
                    Text("Starred Message"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        CupertinoIcons.device_laptop,
                        color: Colors.teal,
                      ),
                    ),
                    Text("Linked Devices"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.key,
                        color: Colors.blue,
                      ),
                    ),
                    Text("Account"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.whatsapp,
                        color: Colors.green,
                      ),
                    ),
                    Text("Chats"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.red,
                      ),
                    ),
                    Text("Notifications"),
                    Spacer(),
                    Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.currency_rupee,
                        color: Colors.teal,
                      ),
                    ),
                    Text("Payments"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.data_exploration_rounded,
                        color: Colors.green,
                      ),
                    ),
                    Text("Storage and Data"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.help,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text("Help"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                    ),
                    Text("Tell a Friend"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ));
  }
}