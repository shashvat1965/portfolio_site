import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/data.dart';
import 'dart:html' as html;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kName,
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 150,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "sophomore at bits pilani\nstudent by day, developer by night",
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      html.window.open(kLinkedin, "linkedin");
                    },
                    child: SvgPicture.asset(
                      "assets/linkedin.svg",
                      height: 40,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: GestureDetector(
                      onTap: () {
                        html.window.open(kGitHub, "github");
                      },
                      child: SvgPicture.asset(
                        "assets/github.svg",
                        height: 40,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: GestureDetector(
                      onTap: () {
                        html.window
                            .open("mailto:shashvat1965@gmail.com", "email");
                      },
                      child: const Icon(
                        Icons.alternate_email_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: GestureDetector(
                      onTap: () {
                        html.window.open(kResume, "resume");
                      },
                      child: const Icon(
                        Icons.contact_page_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
