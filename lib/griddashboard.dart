
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  final Items item1 = new Items(
      title: "Battle",
      subtitle: "Simulate Battle Between Custom Mons",
      event: "3 Events",
      img: "assets/calendar.png");
     

  final Items item2 = new Items(
    title: "Train",
    subtitle: "Play battle simulations",
    event: "4 Items",
    img: "assets/food.png",
  );
  final Items item3 = new Items(
    title: "Team Builder",
    subtitle: "Build team and see their pros and cons",
    event: "",
    img: "assets/map.png",
  );
  final Items item4 = new Items(
    title: "Rankings",
    subtitle: "Explore ranking, movesets and counters",
    event: "",
    img: "assets/festival.png",
  );
  final Items item5 = new Items(
    title: "Articles",
    subtitle: "Whats new!",
    event: "4 Items",
    img: "assets/todo.png",
  );
  final Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
