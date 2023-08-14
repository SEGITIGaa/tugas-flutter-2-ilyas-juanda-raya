import 'package:flutter/material.dart';
import 'package:flutter_application_coffe/beli.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool pakeSusu = false;
  bool pakeKeju = false;
  bool pakeSanten = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 328,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Image.asset(
                "images/kopi_3-crop.png",
                height: 72,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kopi enak",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Rp. 20.000",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 10),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 28,
                            ),
                          ),
                          const Text(
                            "47",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: const Text(
                        "Selain sebagai minuman, kopi juga memiliki sejarah yang kaya sebagai bagian dari budaya sosial dan ritual di berbagai budaya di seluruh dunia. Minuman kopi sering kali menjadi tempat pertemuan, diskusi, atau momen relaksasi.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, bottom: 20),
                      child: const Text(
                        "Toping tambahan ",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: CheckboxListTile(
                        title: const Text(
                          'susu',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: pakeSusu,
                        onChanged: (bool) {
                          setState(() {
                            pakeSusu = !pakeSusu;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: CheckboxListTile(
                        title: const Text(
                          'keju',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: pakeKeju,
                        onChanged: (bool) {
                          setState(() {
                            pakeKeju = !pakeKeju;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: CheckboxListTile(
                        title: const Text(
                          'santen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: pakeSanten,
                        onChanged: (bool) {
                          setState(
                            () {
                              pakeSanten = !pakeSanten;
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Beli(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade500,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Beli langsung',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
