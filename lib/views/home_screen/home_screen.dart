import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.59,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.orangeAccent, Colors.white])),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.04, horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Afternoon, Kiran Chaitu',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                '9652171959',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: width * 0.15,
                                height: height * 0.021,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                  child: Text(
                                    'Prepaid',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orangeAccent),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.43,
                    width: width * 1,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent),
                              child: Column(
                                children: [
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: height * 0.04,
                                        width: width * 0.25,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      Container(
                                        height: height * 0.04,
                                        width: width * 0.25,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width * 1,
                              decoration:
                                  BoxDecoration(color: Colors.pinkAccent),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: height * 0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(colors: [
                                Colors.lightBlueAccent,
                                Colors.white
                              ])),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: width * 1,
            height: height * 0.4,
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Container(
                height: height * 0.25,
                width: width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        spreadRadius: 0.5,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quick Actions',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 20, crossAxisCount: 4),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: height * 0.06,
                                  width: height * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color.fromARGB(
                                          255, 229, 224, 224)),
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Add'),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
