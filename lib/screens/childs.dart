import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mozammel_me/widgets/social.dart';

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/mine.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Hello!',
                      style: GoogleFonts.girassol(
                          textStyle: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)))),
                  RichText(
                    text: TextSpan(
                        text: "Its!  ",
                        style: GoogleFonts.girassol(
                          textStyle:
                              TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                        ),
                        children: [
                          TextSpan(
                              text: "Mozammel Hoshen Chowdhury",
                              style: GoogleFonts.girassol(
                                  textStyle: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87)))
                        ]),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 20),
                      child: SizedBox(
                        width: 250.0,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Horizon',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('BE AWESOME'),
                              TypewriterAnimatedText('BE OPTIMISTIC'),
                              TypewriterAnimatedText('BE DIFFERENT'),
                              TypewriterAnimatedText(
                                  'Do not patch bugs out, rewrite them'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  SocialIcons(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Hello!',
                style: GoogleFonts.girassol(
                    textStyle: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Regular",
                        color: Color(0xFF8591B0)))),
            RichText(
              text: TextSpan(
                  text: "Its!  ",
                  style: GoogleFonts.girassol(
                    textStyle:
                        TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                  ),
                  children: [
                    TextSpan(
                      text: "Mozammel Hoshen Chowdhury",
                      style: GoogleFonts.girassol(
                          textStyle: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    )
                  ]),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20),
                child: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('BE AWESOME'),
                        TypewriterAnimatedText('BE OPTIMISTIC'),
                        TypewriterAnimatedText('BE DIFFERENT'),
                        TypewriterAnimatedText(
                            'Do not patch bugs out, rewrite them'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/mine.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SocialIcons(),
            SizedBox(
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
