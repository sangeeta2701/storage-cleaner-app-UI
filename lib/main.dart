import 'package:cleaner_app_ui/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(47, 207, 255, 1),
        leading: Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.refresh_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 16,
          ),
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(47, 207, 255, 1),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 352,
                  color: Color.fromRGBO(47, 207, 255, 1),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 65, right: 105),
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(26),
                                  bottomRight: Radius.circular(26),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 85),
                            child: Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(26),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "1.31",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 52,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "GB",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Cleanup Suggested",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      //Adding another widgets

                      Padding(
                        padding: EdgeInsets.only(
                          left: 28,
                          right: 28,
                          top: 58,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 58),
                              child: Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(3, 162, 209, 1),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 230),
                              child: Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28, top: 30),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Used: 22 GB",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(3, 162, 209, 1),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Deletable: 31 GB",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width / 2.25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Can be deleted",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(28),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 28.0, right: 28, top: 32),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            //item 1
                            Row(
                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(Icons.cake_outlined,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Junk caches",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "1.31 GB",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromRGBO(47, 207, 255, 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            //item 2

                            Row(
                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(Icons.grid_view,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "App Data",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Total: 45.6M",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(width: 0.1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // item 3
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(Icons.play_circle_outline,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Audio & Video",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Total: 12.6M",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(width: 0.1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //Item 4

                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 58,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(Icons.view_module,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        "App Uninstalls",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Total: 45.6M",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(width: 0.1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen2()));
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Container(
                                height: 50,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(27, 207, 255, 1)
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color.fromRGBO(3, 162, 209, 1),
                                    ),
                                    Text(
                                      "Cleanup 1.31 GB",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 320,
              right: 40,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 162, 209, 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "1.31",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "GB",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
