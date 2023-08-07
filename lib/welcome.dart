import 'package:flutter/material.dart';
import 'package:flutter_application_coffe/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logoKopi-crop.png"),
            Text(
              "KopiTokoTua",
              style: TextStyle(
                  color: Colors.red.shade500,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Konsisten sampai akhir",
              style: TextStyle(
                  color: Colors.red.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(322, 52),
                backgroundColor: Colors.red.shade500,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                "aku juga mw",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
