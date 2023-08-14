import 'package:flutter/material.dart';
import 'package:flutter_application_coffe/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _iniFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Beranda'),
      //         onTap: () {
      //           // Aksi ketika item sidebar ditekan
      //           Navigator.pop(context); // Menutup Drawer
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 72),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rekomendasi buat kamu",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade500),
              ),
              Text(
                "mari di cobaaa",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.red.shade400),
              ),
              const SizedBox(height: 25),
              const SizedBox(height: 25),
              // for (int i = 1; i <= 4; i++)
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 128,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Image.asset(
                                  "images/kopi_3-crop.png",
                                  height: 72,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                right: -1,
                                top: -1,
                                child: Container(
                                  height: 38,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _toogleFav();
                                    },
                                    icon: Icon(
                                      _iniFav ? Icons.star : Icons.star_border,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kopi enak",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp. 15.000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 128,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Image.asset(
                                  "images/kopi_3-crop.png",
                                  height: 72,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                right: -1,
                                top: -1,
                                child: Container(
                                  height: 38,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _toogleFav();
                                    },
                                    icon: Icon(
                                      _iniFav ? Icons.star : Icons.star_border,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kopi enak",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp. 15.000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 128,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Image.asset(
                                  "images/kopi_3-crop.png",
                                  height: 72,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                right: -1,
                                top: -1,
                                child: Container(
                                  height: 38,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _toogleFav();
                                    },
                                    icon: Icon(
                                      _iniFav ? Icons.star : Icons.star_border,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kopi enak",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp. 15.000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 128,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Image.asset(
                                  "images/kopi_3-crop.png",
                                  height: 72,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                right: -1,
                                top: -1,
                                child: Container(
                                  height: 38,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _toogleFav();
                                    },
                                    icon: Icon(
                                      _iniFav ? Icons.star : Icons.star_border,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kopi enak",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp. 15.000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 128,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Image.asset(
                                  "images/kopi_3-crop.png",
                                  height: 72,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                right: -1,
                                top: -1,
                                child: Container(
                                  height: 38,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _toogleFav();
                                    },
                                    icon: Icon(
                                      _iniFav ? Icons.star : Icons.star_border,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "kopi enak",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp. 15.000",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toogleFav() {
    setState(() {
      if (_iniFav) {
        _iniFav = false;
      } else {
        _iniFav = true;
      }
    });
  }
}
