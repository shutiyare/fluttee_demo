import 'package:flutter/material.dart';

import './myCostomCard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHome(),
    ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               MyCostomCard(titleIcon: Icons.storage,title:'Vacation to Japan' ,subTitle:"82% of \$8.009",containerTitle:"Today" ,containerSubTitle: "+\$87,000",showIcons: true,),
//                MyCostomCard(titleIcon: Icons.storage,title:'Vacation to Japan' ,subTitle:"82% of \$8.009",containerTitle:"Today" ,containerSubTitle: "+\$87,000",showIcons: true,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class myHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/b/handsome-man-hair-style-beard-beauty-face-portrait-fashion-male-model-black-hair-high-resolution-handsome-man-125031765.jpg"),
        ),
        elevation: 0,
        title: Text(
          "Andrew White",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.dashboard_outlined,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Total Balance",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Text(
              "\$312.860",
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 31,
                          child: (Icon(
                            Icons.percent_sharp,
                            size: 38,
                          )),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text("send",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size.zero, // Set this
                    padding: EdgeInsets.zero, // a
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ////button two
                Container(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 4, right: 4),
                  decoration: BoxDecoration(
                      border: Border.all(width: 6, color: Color(0xffe0e0e0)),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: (Icon(
                    Icons.percent_sharp,
                    size: 39,
                    color: Colors.black,
                  )),
                ),
                SizedBox(
                  width: 15,
                ),

                ///buttom 3
                Container(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 4, right: 4),
                  decoration: BoxDecoration(
                      border: Border.all(width: 6, color: Color(0xffeeeeee)),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: (Icon(
                    Icons.access_time_filled_sharp,
                    size: 39,
                    color: Colors.black,
                  )),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Saving Pocket",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            MyCostomCard(
                titleIcon: Icons.storage,
                title: 'Vacation to Japan',
                subTitle: "82% of \$8.009",
                containerTitle: "Today",
                containerSubTitle: "+\$87,000",
                showIcons: true,
                card_Color: Colors.black),
            MyCostomCard(
                titleIcon: Icons.phone_iphone,
                title: 'Iphone 14 ProMax',
                subTitle: "78% of \$1.099",
                containerTitle: "Oct 1,2022",
                containerSubTitle: "+\$1,200",
                showIcons: false,
                card_Color: Color(0xffbdbdbd)),
            MyCostomCard(
              titleIcon: Icons.apartment,
              title: 'Apartment at LA',
              subTitle: "9% of \$245.099",
              containerTitle: "Oct 1,2022",
              containerSubTitle: "+\$145,000",
              showIcons: false,
              card_Color: Color(0xffbdbdbd),
            ),
          ],
        ),
      ),
    );
  }
}
