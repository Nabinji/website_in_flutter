import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Web Developer",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
            child: Text(
              "Web developers create functional, user-friendly websites and web applications. They may write code, develop and test new applications, or monitor site performance and traffic.",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                "Our Services",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Lottie.network(
              "https://lottie.host/c642558f-e7e2-465c-86a8-e215e9fc5564/Hpqm3CtUTX.json"),
          secondMobileScreen(context),
          lastPage(context),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                "Copyright © 2023 WhatiLearnToday All Rights Reserved",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ]);
  }

  Container secondMobileScreen(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1531685250784-7569952593d2?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 400.0,
              child: Center(
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
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'Flutter',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        RotateAnimatedText('Firebase',
                            duration: const Duration(milliseconds: 800),
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'Dart',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                        RotateAnimatedText(
                          duration: const Duration(milliseconds: 800),
                          'GitHub',
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(40),
              ),
              height: 400.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText('-It is not enough to do your best,',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      TyperAnimatedText(
                          '-you must know what to do,and then do your best',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple)),
                      TyperAnimatedText('- W.Edwards Deming',
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
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

Container lastPage(BuildContext context) {
  return Container(
    width: double.infinity,
    color: Colors.black,
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
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
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "About Us",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.3,
          child: const Text(
            "In this Website, there is  valuable and informative content about mobile & web development technologies such as Flutter, Firebase, Dart and More.",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Follow Us",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const Icon(
              FontAwesomeIcons.instagram,
              color: Color.fromARGB(255, 192, 75, 238),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
