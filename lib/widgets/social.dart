import 'package:flutter/material.dart';
import 'package:mozammel_me/constrains/constant.dart';
import 'package:mozammel_me/utils/responsiveLayout.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.0,
        right: ResponsiveLayout.isSmallScreen(context) ? 4 : 74,
        top: 10,
        bottom: 40,
      ),
      child: Row(
        children: [
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/facebook.png"),
              onPressed: () {
                launchURL("https://www.facebook.com/nobaabOfficial/");
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/instagram.png"),
              onPressed: () {
                launchURL("https://www.instagram.com/mozammel.me/");
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/twitter.png"),
              onPressed: () {
                launchURL("https://twitter.com/nobaabc");
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/linkedin.png"),
              onPressed: () {
                launchURL("https://www.linkedin.com/in/nobaab");
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/youtube.png"),
              onPressed: () {
                launchURL(
                    "https://www.youtube.com/channel/UCNobkxZ6pQ8s23jMcbAQMJw");
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
              // Use the CIcon Widget + IconMoon class for the IconData
              icon: Image.asset("assets/icons/imdb.png"),
              onPressed: () {
                launchURL("https://www.imdb.com/name/nm12657113/");
              }),
        ],
      ),
    );
  }
}
