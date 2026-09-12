import 'package:flutter/material.dart';
import 'package:untitled/data/story_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        title: Image.asset("assets/images/Logo.png", height: 25),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("assets/images/ProfilePicture.jpg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: story.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(story[index]),
                        ),
                        SizedBox(height: 5),
                        Text("${storyTitle[index]}"),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xffFD6E86),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50-40% OFF",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Now in (product)",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "All colours",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Shop Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xff4392F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deal of the Day",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "22h 55m 20s remaining",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 100,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/OfferLogo.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Special Offers",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "We make sure you get the \noffer you need at best prices",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xffE7E7EB),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
