import 'package:flutter/material.dart';

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
            'Profile',
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
          leadingWidth: 90,
        ),
        body: Column(
          children: [
            // Text('$waktu'),
            TextFormField(
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
          ],
        ),
      ),
    );
  }
}

var waktu = DateTime.now().hour.bitLength;
