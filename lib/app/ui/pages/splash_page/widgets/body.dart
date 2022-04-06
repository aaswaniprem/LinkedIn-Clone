import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/routes/my_pages.dart';
import 'package:linkedin_clone/app/ui/pages/landing_page/landing_page.dart';
import 'package:linkedin_clone/app/ui/pages/sign_in/sign_in.dart';
import 'package:linkedin_clone/app/ui/pages/sign_up/sign_up1.dart';
import 'package:linkedin_clone/app/ui/theme/color_constant.dart';
import 'package:linkedin_clone/app/ui/theme/text_constant.dart';
// This is the best practice
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Find and land your next job", "image": "images/image1.jpg"},
    {"text": "build your network on the go", "image": "images/image2.jpg"},
    {
      "text": "stay ahead with curated content for your career",
      "image": "images/image3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset(
                "images/Logo.svg",
                width: 30,
                height: 30,
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]['text']!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    // Spacer(flex: 1),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(color: blue)))),
                        onPressed: () {
                          Get.to(() => SignUp());
                        },
                        //   Navigator.of(context).push(MaterialPageRoute(
                        // builder: (BuildContext context) => SignUp(),
                        // )),

                        child: Text(
                          "Join now",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(color: Colors.black)))),
                        onPressed: () {},
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 60,
                            ),
                            SvgPicture.asset(
                              "images/icons-google.svg",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Join with Google",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    GestureDetector(
                        onTap: () {
                          Get.to(() => SignIn());
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.landing);
                        },
                        child: Text("Skip", style: lato17)),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 10 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.grey[800] : Colors.white,

        border: Border.all(
          color: currentPage == index ? Colors.grey[800]! : Colors.black,
        ),
        borderRadius: BorderRadius.circular(10), //Border.all
      ),
    );
  }
}
