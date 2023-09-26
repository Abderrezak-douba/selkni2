import 'package:flutter/material.dart';

class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 440,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/morceli.jpg',
                      height: 165,
                      width: 850,
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Morceli Cle',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '0795986097',
                          style: TextStyle(fontSize: 13),
                        ),
                        VerticalDivider(
                          thickness: 3,
                          width: 8,
                          color: Colors.grey,
                        ),
                        Text('0552392674')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
