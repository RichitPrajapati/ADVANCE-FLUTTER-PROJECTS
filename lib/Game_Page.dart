import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_app/Ios_Global_Page.dart';


class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
      const CupertinoNavigationBar(backgroundColor: CupertinoColors.white),
      backgroundColor: CupertinoColors.white,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Games",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 5),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/Images/Profile.png'),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: todayList
                            .map((e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("NEW GAME",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: CupertinoColors.activeBlue,
                                )),
                            Text(e.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
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
                              width: MediaQuery.of(context).size.width *
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
                        ))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Text(
                          "Discover AR Gaming",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
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
                                  borderRadius: BorderRadius.circular(18),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(e.name),
                                  Text(
                                    e.subName,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
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
                                      const SizedBox(width: 10),
                                      const Text(
                                        "In -APP \n Purchase",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                          .toList(),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                )
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
                  if (bottomIndex == 2) {
                    Navigator.of(context).pushNamed("app_page");
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
      ]),
    );
  }
}

class Updates extends StatefulWidget {
  const Updates({Key? key}) : super(key: key);

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Text("Coming Soon"),
        ));
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Center(
        child: Text("Coming Soon"),
      ),
    );
  }
}