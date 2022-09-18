import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_app/Ios_Global_Page.dart';


class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Apps",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Spacer(flex: 10),
                        CircleAvatar(
                            radius: 18,
                            backgroundImage:
                            AssetImage('assets/Images/Profile.png')),
                      ],
                    ),
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: todayList
                                .map(
                                  (e) => Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  const Text("NOW WITH SIRI",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: CupertinoColors.activeBlue,
                                      )),
                                  SizedBox(height: 10),
                                  Text(e.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20)),
                                  SizedBox(height: 10),
                                  Text(
                                    e.description,
                                    style:
                                    const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    height: 180,
                                    width:
                                    MediaQuery.of(context).size.width *
                                        0.85,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(e.image),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ],
                              ),
                            )
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: const [
                            Text(
                              "12 Great Apps for iOS 12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: todayList
                              .map(
                                (e) => Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: AssetImage(e.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(e.name),
                                      Text(e.subName,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 25,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      color: const Color(0xffF0F0F8),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "GET",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                              .toList(),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Spacer(),
                CupertinoTabBar(
                  height: 60,
                  currentIndex: bottomIndex,
                  onTap: (val) {
                    setState(() {
                      bottomIndex = val;
                      if (bottomIndex == 0) {
                        Navigator.of(context).pushNamed("/");
                      }
                      if (bottomIndex == 1) {
                        Navigator.of(context).pushNamed("game_page");
                      }
                      if (bottomIndex == 3) {
                        Navigator.of(context).pushNamed("updates");
                      }
                      if (bottomIndex == 4) {
                        Navigator.of(context).pushNamed("search");
                      }
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.today),
                      label: "Today",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.rocket_fill),
                      label: "Games",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.plus_app_fill),
                      label: "Apps",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.cloud_download_fill),
                      label: "Updates",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search),
                      label: "search",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}