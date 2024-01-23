import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SendFeedBack extends StatelessWidget {
  const SendFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "https://www.eatbanza.com/cdn/shop/collections/website-desktop1_1_1200x.jpg?v=1602556563",
            height: 200,
            width: 1233,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const AutoSizeText(
                  "Send Your Feedback",
                  maxLines: 1,
                  minFontSize: 14,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your feedback",
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 22,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
