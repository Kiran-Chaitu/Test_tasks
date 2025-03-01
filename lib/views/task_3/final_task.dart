import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class FinalTask extends StatefulWidget {
  const FinalTask({super.key});

  @override
  State<FinalTask> createState() => _FinalTaskState();
}

class _FinalTaskState extends State<FinalTask> {
  final List<String> items = ['Begginer', 'Medium', 'Advance'];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Stack(
        children: [
          Container(color: Colors.white),
          Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.orange),
          ),
          Positioned(
            top: 0,
            left: -3,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: MediaQuery.of(context).size.width / 2 + 5,
            ),
          ),

          Positioned(
            top: 60,
            left: -40,
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 100,
            ),
          ),
          Positioned(
            top: 20,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
                  SizedBox(width: 120),
                  Text(
                    'Curse',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 140),
                  Icon(Icons.more_vert, color: Colors.white, size: 25),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: -70,
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 100,
            ),
          ),
          Positioned(
            top: 100,
            left: 50,
            child: Column(
              children: [
                Text(
                  'Spanish',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,

                      hint: Text(
                        'Select Item',
                        style: TextStyle(fontSize: 16, color: Colors.orange),
                      ),
                      items:
                          items
                              .map(
                                (String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(height: 40),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      "♦️ ♦️ ",
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Text(
                      "2 Milestones",
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 40,
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                value: 0.43,
                color: Colors.white,
                valueColor: AlwaysStoppedAnimation(Colors.white),
                backgroundColor: Colors.white54,
                strokeCap: StrokeCap.round,
                strokeWidth: 5,
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 65,
            child: Column(
              children: [
                Text(
                  "43%",
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  "completed",
                  style: const TextStyle(fontSize: 11, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box(Icons.file_open, "Basics", 4, Colors.orange),
                      SizedBox(width: 10),
                      box(
                        Icons.shopping_bag_sharp,
                        "Occupations",
                        1,
                        Colors.redAccent,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      box(Icons.message, "Conversation", 3, Colors.blue),
                      SizedBox(width: 10),
                      box(Icons.location_on, "Places", 1, Colors.green),
                    ],
                  ),
                  Row(
                    children: [
                      box(Icons.group, "Family members", 2, Colors.purple),
                      SizedBox(width: 10),
                      box(
                        Icons.apple_outlined,
                        "Foods",
                        1,
                        const Color.fromARGB(255, 15, 96, 162),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget box(icon, text, value, color) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: Container(
        width: 160,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(child: Icon(icon, color: color)),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              "$value/5",
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10),

              child: LinearProgressIndicator(
                minHeight: 6,
                borderRadius: BorderRadius.circular(20),
                value: value / 5,
                color: color,
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}