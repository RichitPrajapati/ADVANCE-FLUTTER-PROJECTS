import 'package:flutter/material.dart';
import 'package:playstore_app/Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle myStyle = const TextStyle(color: Colors.black, fontSize: 15);
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  int bottomNavi = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _key,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/Images/Profile.png')),
              const SizedBox(
                height: 10,
              ),
              const Text("Richit Prajapati"),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
              ),
              Row(
                children: [
                  const Text("Convert into IOS"),
                  const Spacer(),
                  Switch(
                      value: Global.isIOS,
                      onChanged: (val) {
                        Global.isIOS = val;
                        setState(() {});
                      }),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Log Out"))
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                  spreadRadius: 0,
                  offset: Offset.fromDirection(0.1, 0.1),
                ),
              ],
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
                const InkWell(
                    child: Text(
                      "Search Games ",
                      style: TextStyle(color: Colors.grey),
                    )),
                const InkWell(
                    child: Icon(
                      Icons.keyboard_voice_outlined,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          bottom: TabBar(
            onTap: (val) {},
            tabs: [
              Text("For you", style: myStyle),
              Text(
                "Top Charts",
                style: myStyle,
              ),
              Text(
                "Categories",
                style: myStyle,
              ),
              Text(
                "EditorCheck",
                style: myStyle,
              ),
              Text(
                "NewText",
                style: myStyle,
              ),
            ],
            indicatorColor: const Color(0xff01875f),
            isScrollable: true,
          ),
        ),
        body: const TabBarView(
          children: [
            FirstScreenPage(),
            SecondScreen(),
            Center(child: Text("Coming Soon")),
            Center(child: Text("Coming Soon")),
            Center(child: Text("Coming Soon")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavi,
          onTap: (val) {
            setState(() {
              bottomNavi = val;
            });
          },
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Game",
              icon: Icon(Icons.videogame_asset),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Apps",
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Movies & TV",
              icon: Icon(Icons.local_movies_outlined),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Books",
              icon: Icon(
                Icons.book_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) {
          return (i == 4)
              ? Container()
              : Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  appsList[i].sname,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          );
        },
        separatorBuilder: (context, i) {
          return Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...Global.Icons.map(
                        (e) => InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("install_page", arguments: e);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 120),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(

                                  image: AssetImage("${e['Image']}")
                              ),

                              color: Colors.white,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${e['name']}",
                            style: const TextStyle(fontSize: 11),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${e['rating']}",
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
        itemCount: Global.Icons.length);
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool installSwitchVal = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Show installed apps",
                  style: TextStyle(color: Colors.grey),
                ),
                Switch(
                    activeColor: const Color(0xff01875f),
                    value: installSwitchVal,
                    onChanged: (val) {
                      installSwitchVal = val;
                      setState(() {});
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: Global.Icons.map(
                    (e) => SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Text(
                        ("${Global.Icons.indexOf(e) + 1}"),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("${e['Image']}"),

                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      // SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text("${e['name']}"),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "${e['rating']}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                              const Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}