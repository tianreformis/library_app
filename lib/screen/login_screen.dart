import 'package:flutter/material.dart';
import 'package:library_app/screen/landing_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              fontFamily: "Poppins Regular",
            ),
          ),
          leading: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
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
            child: const Icon(Icons.arrow_back),
          ),
          actions: const [],
          leadingWidth: 60,
        ),
        body: Column(
          children: [
            // Text('$waktu'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Masukkan Email",
                  fillColor: Colors.blue,
                  focusColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 10,
                      )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Username';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Masukkan Password",
                  fillColor: Colors.blue,
                  focusColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 10,
                      )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan Password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop;
                },
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Icon(Icons.input),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Masuk'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

var waktu = DateTime.now().hour.bitLength;
