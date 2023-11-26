import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "Web Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: const Text(
                        "Web developers create functional, user-friendly websites and web applications. They may write code, develop and test new applications, or monitor site performance and traffic.",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Text(
                          "Our Project",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Lottie.network(
                  "https://lottie.host/3775b05c-55df-48b6-a031-6ff1f4f11e84/fPu9PFFyNt.json",
                  height: 700,
                  width: 700),
            ),
          ],
        ),
        desktopSecondScreen(context),
        desktopThirdScreen(context),
        lastDesktopScreen(context)
      ],
    );
  }

  Container desktopSecondScreen(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1531685250784-7569952593d2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 400,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 16,
                    ),
                    const Text(
                      "Learn",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText(
                            duration: const Duration(milliseconds: 900),
                            'Flutter',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                        RotateAnimatedText(
                            duration: const Duration(milliseconds: 900),
                            'Firebase',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        RotateAnimatedText(
                            duration: const Duration(milliseconds: 900),
                            'Dart',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            )),
                        RotateAnimatedText(
                            duration: const Duration(milliseconds: 900),
                            'GitHub',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('-It is not enough to do your best,',
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            )),
                        TyperAnimatedText(
                            '-you must know what to do,and then do your best',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        TyperAnimatedText('- W.Edwards Deming',
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
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

Center desktopThirdScreen(BuildContext context) {
  return Center(
    child: Container(
      height: 250,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 120,
            width: 120,
          ),
          const Text(
            "WhatiLearnToday",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.7,
                  child: const Text(
                    "In this Website, there is  valuable and informative content about mobile & web development technologies such as Flutter, Firebase, Dart and More.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Follow Us",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.pink,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Container lastDesktopScreen(BuildContext context) {
  return Container(
    height: 30,
    color: Colors.blueGrey,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Copyright © 2023 WhatiLearnToday All Rights Reserved",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width / 7.3),
        const Text(
          " Terms & Condition",
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          " Terms & Condition",
          style: TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
