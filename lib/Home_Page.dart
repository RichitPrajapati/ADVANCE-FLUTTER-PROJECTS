import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () async {
            await openAppSettings();
          },
          icon: const Icon(Icons.settings_applications),
        ),
        title: const Text("Device Permissions"),
        centerTitle: true,
        actions: [
          Container(
            height: 250,
            child: IconButton(
              onPressed: () async {
                List permission = [
                  await Permission.camera.status.isGranted ? true : false,

                  await Permission.location.status.isGranted ? true : false,

                  await Permission.phone.status.isGranted ? true : false,

                  await Permission.microphone.status.isGranted ? true : false,

                  await Permission.bluetoothConnect.status.isGranted ? true : false,

                  await Permission.calendar.status.isGranted ? true : false,

                  await Permission.contacts.status.isGranted ? true : false,

                  await Permission.sms.status.isGranted ? true : false,

                  await Permission.sensors.status.isGranted ? true : false,

                  await Permission.storage.status.isGranted ? true : false,

                ];
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      scrollable: true,
                      title: const Center(child: Text("App's Permission Details")),
                      content: Column(
                        children: [
                          listTile(
                              "Camera", Icons.camera_alt_rounded, permission[0]),
                          SizedBox(height:20),
                          listTile("Location", Icons.location_on, permission[1]),
                          SizedBox(height:20),
                          listTile("Phone", Icons.call, permission[2]),
                          SizedBox(height:20),
                          listTile("Microphone", Icons.mic, permission[3]),
                          SizedBox(height:20),
                          listTile("Bluetooth", Icons.bluetooth, permission[4]),
                          SizedBox(height:20),
                          listTile(
                              "Calender", Icons.calendar_month, permission[5]),
                          SizedBox(height:20),
                          listTile("Contact", Icons.contacts, permission[6]),
                          SizedBox(height:20),
                          listTile("SMS", Icons.sms, permission[7]),
                          SizedBox(height:20),
                          listTile("Body Sensor", Icons.sensors, permission[8]),
                          SizedBox(height:20),
                          listTile("File and media", Icons.folder, permission[9]),
                          SizedBox(height:20),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.account_balance),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
           SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.camera_alt_rounded),
            label: const Text("Camera"),
            onPressed: () async {
              var status = Permission.camera.status;
              if (await status.isDenied) {
                Permission.camera.request();
              } else if (await status.isGranted) {
                snackBar("Camera");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.location_on),
            label: const Text("Location"),
            onPressed: () async {
              var status = Permission.location.status;
              if (await status.isDenied) {
                Permission.location.request();
              } else if (await status.isGranted) {
                snackBar("Location");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.call),
            label: const Text("Phone"),
            onPressed: () async {
              var status = Permission.phone.status;
              if (await status.isDenied) {
                Permission.phone.request();
              } else if (await status.isGranted) {
                snackBar("Phone");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.mic),
            label: const Text("Microphone"),
            onPressed: () async {
              var status = Permission.microphone.status;
              if (await status.isDenied) {
                Permission.microphone.request();
              } else if (await status.isGranted) {
                snackBar("Microphone");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.bluetooth),
            label: const Text("Bluetooth"),
            onPressed: () async {
              var status = Permission.bluetoothConnect.status;
              if (await status.isDenied) {
                Permission.bluetoothConnect.request();
              } else if (await status.isGranted) {
                snackBar("Bluetooth");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.calendar_month),
            label: const Text("Calendar"),
            onPressed: () async {
              var status = Permission.calendar.status;
              if (await status.isDenied) {
                Permission.calendar.request();
              } else if (await status.isGranted) {
                snackBar("Calendar");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.contacts),
            label: const Text("Contacts"),
            onPressed: () async {
              var status = Permission.contacts.status;
              if (await status.isDenied) {
                Permission.contacts.request();
              } else if (await status.isGranted) {
                snackBar("Contacts");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.sms),
            label: const Text("SMS"),
            onPressed: () async {
              var status = Permission.sms.status;
              if (await status.isDenied) {
                Permission.sms.request();
              } else if (await status.isGranted) {
                snackBar("SMS");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.sensors,size:30),
            label: const Text("Body Sensors"),
            onPressed: () async {
              var status = Permission.sensors.status;
              if (await status.isDenied) {
                Permission.sensors.request();
              } else if (await status.isGranted) {
                snackBar("Body Sensors");
              }
            },
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            icon: const Icon(Icons.folder),
            label: const Text("Files and media"),
            onPressed: () async {
              var status = Permission.storage.status;
              if (await status.isDenied) {
                Permission.storage.request();
              } else if (await status.isGranted) {
                snackBar("Files and media");
              }
            },
          ),
        ],
      ),
    );
  }

  snackBar(name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        content: Text("$name Permission Already Exists."),
      ),
    );
  }

  listTile(name, icon, val) {
    return ListTile(
      onTap: () {},
      title: Text(name),
      leading: Icon(icon),
      trailing: Checkbox(
        value: val,
        onChanged: (val) {},
      ),
    );
  }
}
