import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  List<String> wilaya = ['Client', 'fornisseur'];
  String? selcetedwilaya = 'fornisseurS';

  int thecurrentindes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 233, 248),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  hintText: 'name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  hintText: 'prenom',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.markunread_outlined),
                  hintText: 'Adrress',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  hintText: 'phone number',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.garage_sharp),
                  hintText: 'Grage',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.factory_outlined),
                  hintText: 'Adrress',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => signup())));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade500, minimumSize: Size(60, 48)),
              child: Text('Sign-up'),
            )
          ],
        ),
      ),
    );
  }
}
