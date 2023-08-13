import 'package:flutter/material.dart';
import 'package:flutter_application_coffe/home.dart';

class Beli extends StatefulWidget {
  const Beli({super.key});

  @override
  State<Beli> createState() => _BeliState();
}

class _BeliState extends State<Beli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/berhasil.png'),
            Text(
              "Pembelian berhasil",
              style: TextStyle(
                  color: Colors.green.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            const Text(
              "silanhkan tunggu pesanan anda ",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            const SizedBox(
              height: 358,
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
                "lanjut milih kopi",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
