import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Tambak Ikan Yogi Anang Budiman',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 80,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xFF7AB2D3),
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5FEFF).withOpacity(.8),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Jadwal Makan Ikan',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Text('08.00 WITA'),
                                  const Text('12.00 WITA'),
                                  const Text('16.00 WITA'),
                                  FilledButton(
                                    onPressed: () {
                                      setState(() {
                                        isOn = !isOn;
                                      });
                                    },
                                    style: FilledButton.styleFrom(
                                      backgroundColor: isOn
                                          ? const Color(0xff49AF2A)
                                          : Colors.red,
                                      foregroundColor: Colors.white,
                                    ),
                                    child: Text(isOn ? 'ON' : 'OFF'),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Kapal ${isOn ? 'Aktif' : 'Mati'}',
                                        style: TextStyle(
                                          color:
                                              isOn ? Colors.green : Colors.red,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              isOn ? Colors.green : Colors.red,
                                        ),
                                        child: Center(
                                          child: Container(
                                            width: 8,
                                            height: 8,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset('assets/alat.png'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: const Center(
                              child: Text(
                                'Monitoring Lingkungan',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/suhu.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        'Suhu Air',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '26,4 C',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(32),
                                            color: Colors.green),
                                        child: const Center(
                                          child: Text(
                                            'Baik',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/ph.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        'Ph Air',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      const Text(
                                        '4.30',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(32),
                                            color: const Color(0xFFCDCD0E)),
                                        child: const Center(
                                          child: Expanded(
                                            child: Text(
                                              'Cukup',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/keruh.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Expanded(
                                        child: Text(
                                          'Kekeruhan Air',
                                          style: TextStyle(
                                              height: 1.2,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFfB9E5E8),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      const Text(
                                        '15.2',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(32),
                                            color: Colors.red),
                                        child: const Center(
                                          child: Expanded(
                                            child: Text(
                                              'Kurang',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24),
              color: const Color(0xFF7AB2D3),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Kolaborasi Celebes Resesarch Group dan PT. Telkom Indonesia Dalam Innovillange 2024',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset('assets/5innovillage.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
