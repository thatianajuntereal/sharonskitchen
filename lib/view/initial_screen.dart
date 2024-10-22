import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sharonskitchen/utils/colored_button.dart';
import 'package:sharonskitchen/view/pasta_list_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pasta.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Text(
                  "SHARON'S\nKITCHEN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.px,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Home-cooked\nfood at your doorstep.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.px,
                    color: Colors.white70,
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 40.px),
                    child: ColoredButton(
                        backgroundColor: const Color(0xFF8B4513),
                        text: "Get Started!",
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PastaListScreen()));
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
