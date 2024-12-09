import 'package:antares_star/pages/main_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/logo.png',
                height: 80,
              ),
            ),
            Expanded(
                child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                    bottom: 0,
                    left: -40,
                    child: Image.asset('assets/bg_fishery.png')),
                Center(
                  child: Container(
                    // height: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9).withOpacity(.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Sistem Pemberian Pakan Ikan',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MouseRegion(
                          cursor: MouseCursor.defer,
                          child: InkWell(
                            onTap: () => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => const MainPage())),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF49AF2A),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Mulai',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
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
            )
          ],
        ),
      ),
    );
  }
}
