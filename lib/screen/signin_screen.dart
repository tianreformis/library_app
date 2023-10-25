// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:library_app/screen/landing_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign In',
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
              padding: const EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0),
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

            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Masukkan Alamat",
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
                    return 'Masukkan Alamat';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop;
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: Colors.black),
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
                  )),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Tidak Punya Akun,'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Daftar'),
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

var waktu = DateTime.now().hour.bitLength;
