import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello, world", style: GoogleFonts.leckerliOne(fontSize: 40)),

        Text("Hello", style: Theme.of(context).textTheme.headlineMedium),
        Text(
          " Lorem ipsum Lorem ipsum Lorem ipsum  Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsum ",
        ),
        const Divider(),
        RichText(
          text: const TextSpan(
            text: 'Flutter text is ',
            style: TextStyle(fontSize: 16, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'really',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Text',
                    style: TextStyle(
                      fontSize: 55,
                      decorationStyle: TextDecorationStyle.double,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
