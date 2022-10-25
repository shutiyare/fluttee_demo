import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as v_math;

class MyCostomCard extends StatelessWidget {
  IconData titleIcon;
  String title;
  String subTitle;
  bool showIcons;
  String containerTitle;
  String containerSubTitle;
  Color card_Color;

  MyCostomCard({
    required this.titleIcon,
    required this.title,
    required this.subTitle,
    required this.containerTitle,
    required this.containerSubTitle,
    this.showIcons = false,
    this.card_Color = Colors.grey,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipPath(
            clipper: DolDurmaClipper(right: 293, holeRadius: 28),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: card_Color),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 3, right: 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                titleIcon,
                                size: 20,
                              )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: showIcons
                                        ? Colors.white
                                        : Colors.black)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              subTitle,
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      showIcons ? Colors.white : Colors.black),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  showIcons
                                      ? Icon(Icons.keyboard_double_arrow_right)
                                      : Text(''),
                                  Text(containerTitle),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  showIcons
                                      ? Icon(Icons.keyboard_double_arrow_left)
                                      : Text('')
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                containerSubTitle,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(
                            right: 3,
                            top: 0,
                          ),
                          // padding: EdgeInsets.only(left: 0,right: 0,top: 0),
                          height: 100, width: 110,
                          decoration: BoxDecoration(
                              color:
                                  showIcons ? Colors.white : Color(0xfffbe9e7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ]),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ]);
  }
}

/*



ListTile(
             
              
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.access_alarm_outlined,size: 20,)),title: const Text('Vacation to Japan'),subtitle: Text("82% of \$8.009"),
        trailing: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 0,top: 0,),
             // padding: EdgeInsets.only(left: 0,right: 0,top: 0),
              height: 100,width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            
            ),
          ],
        ),
//Column(children: [Row(children: [Icon(Icons.arrow_forward),Text("Today") ,Icon(Icons.arrow_back_ios),],)],)

                )
*/
class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: Radius.circular(18),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: Radius.circular(18),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
