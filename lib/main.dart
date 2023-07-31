import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Text("Allinone UI kit",style:
      TextStyle(fontSize: 25,color: Colors.white)),
              SizedBox(width: 105,),
              Switch(activeTrackColor: Colors.white,
                  activeColor: Colors.red,
                  value: isSwitched, onChanged: (value){setState(() {
                isSwitched = value;
              });})
            ],
          ),
      
      backgroundColor: Colors.grey.shade900),
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 10),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("images/smartphone.png"),
                              radius: 40,
                              backgroundColor: Colors.blueAccent,
                            ),
                          ),
                          Text("Default Theme",style: TextStyle(
                            fontSize: 15,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Container(
                                height: 80,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.indigo,
                                  image: DecorationImage(
                                    image: AssetImage("images/home.png"),
                                  ),
                                )
                            )
                          ),
                          Text("Full App",style: TextStyle(
                            fontSize: 15,color: Colors.white,
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/globe.png"),
                              radius: 40,
                              backgroundColor: Colors.teal,
                            ),
                          ),
                          Text("Integration",
                          style: TextStyle(fontSize: 15,
                          color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/dashboard.png"),
                              radius: 40,
                              backgroundColor: Colors.deepOrange,
                            ),
                          ),
                          Text("Dashboard",
                          style: TextStyle(fontSize: 15,
                          color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Themes",style: TextStyle(fontSize: 25,
                color: Colors.white,),),
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 80,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  image: DecorationImage(
                                    image: AssetImage("images/folder.png"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(alignment: Alignment.centerRight,
                              children: [
                                CircleAvatar(
                                  radius: 17,
                                  backgroundImage: AssetImage("images/next.png"),
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                Container(
                                  height: 80,
                                  width: 225,
                                  color: Colors.white12,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "File Manager",
                                            style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Theam 1 Screens",
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 80,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                  image: DecorationImage(
                                    image: AssetImage("images/worker.png"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(alignment: Alignment.centerRight,
                               children: [
                                 CircleAvatar(
                                   radius: 17,
                                   backgroundColor: Colors.teal,
                                   backgroundImage: AssetImage("images/next.png"),
                                 ),
                                Container(
                                  height: 80,
                                  width: 225,
                                  color: Colors.white12,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Exercise Tips",
                                            style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Theam 2 Screens",
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 80,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.blueAccent,
                                  image: DecorationImage(
                                    image: AssetImage("images/light-stick.png"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(alignment: Alignment.centerRight,
                               children: [
                                 CircleAvatar(
                                   radius: 17,
                                   backgroundImage: AssetImage("images/next.png"),
                                   backgroundColor: Colors.blueAccent,
                                 ),
                                Container(
                                  height: 80,
                                  width: 225,
                                  color: Colors.white12,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Food Recipe",
                                            style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Theam 3 Screens",
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 80,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.indigo.shade300,
                                  image: DecorationImage(
                                    image: AssetImage("images/briefcase.png"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(alignment: Alignment.centerRight,
                               children: [
                                 CircleAvatar(
                                   radius: 17,
                                   backgroundColor: Colors.indigo.shade300,
                                   backgroundImage: AssetImage("images/next.png"),
                                 ),
                                Container(
                                  height: 80,
                                  width: 225,
                                  color: Colors.white12,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Gym",
                                            style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Theam 4 Screens",
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 80,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.cyanAccent,
                                  image: DecorationImage(
                                    image: AssetImage("images/customer-support.png"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              alignment: Alignment.centerRight,
                               children: [
                                 CircleAvatar(
                                   backgroundImage: AssetImage("images/next.png"),
                                   radius: 17,
                                   backgroundColor: Colors.cyanAccent,
                                 ),
                                Container(
                                  height: 80,
                                  width: 225,
                                  color: Colors.white12,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "E-wallet",
                                            style: TextStyle(fontSize: 20,color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Theam 4 Screens",
                                            style: TextStyle(fontSize: 15,color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
