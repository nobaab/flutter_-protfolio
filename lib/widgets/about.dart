import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mozammel_me/constrains/text.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('ABOUT!',
                    style: GoogleFonts.girassol(
                        textStyle: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Regular",
                            color: Color(0xFF8591B0)))),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 400,
                          width: 1100,
                          decoration: BoxDecoration(
                            color: Color(0xFF81BDF2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage:
                                        AssetImage('assets/images/mine.jpg')),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: RichText(
                                        textAlign: TextAlign.justify,
                                        text: TextSpan(
                                            text: "Its!  ",
                                            style: GoogleFonts.girassol(
                                              textStyle: TextStyle(
                                                  fontSize: 30,
                                                  color: Color(0xFF8591B0)),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: aboutme,
                                                style: GoogleFonts.girassol(
                                                    textStyle: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black87)),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
