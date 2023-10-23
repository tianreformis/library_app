import 'package:flutter/material.dart';
import 'login_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //this is home of app
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 218, 218),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              greeting(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.longestSide / 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Perpustakaan \nPerkantas Banjarmasin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.longestSide / 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfile()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(size.longestSide / 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: size.longestSide / 40,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.login_rounded,
                        size: size.longestSide / 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Selamat Pagi 🌃';
  }
  if (hour < 17) {
    return 'Selamat Sore 🌆';
  }
  return 'Selamat Malam 🌃';
}
