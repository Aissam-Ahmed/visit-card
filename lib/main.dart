import 'package:flutter/material.dart';

void main() => runApp(HelloWroldApp());

class HelloWroldApp extends StatelessWidget {
  final Color whiteOpacity = Colors.white.withOpacity(.7);
  HelloWroldApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFF9c27b0),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: whiteOpacity, width: 1)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('images/avatar.png'),
                ),
              ),
              const UserInfo(
                title: 'aissam ait ahmed',
                sizeTitle: 30,
                weightTitle: FontWeight.bold,
                colorTitle: Colors.white,
              ),
              UserInfo(
                title: 'flutter & laravel developer',
                sizeTitle: 16,
                weightTitle: FontWeight.normal,
                colorTitle: whiteOpacity,
              ),
              Divider(
                color: whiteOpacity,
                endIndent: 55,
                indent: 55,
                height: 15,
                thickness: 1,
              ),
              const CustomCard(
                  cardTitle: '(+212) 631901277', ic: Icons.phone_forwarded),
              const CustomCard(
                  cardTitle: 'Res.nfiis marrakech',
                  ic: Icons.person_pin_circle),
              const CustomCard(
                  cardTitle: 'aissam97aitahmed@gmail.com', ic: Icons.mail),
            ],
          )),
    );
  }
}

class CustomCard extends StatelessWidget {
  final IconData ic;
  final String cardTitle;
  const CustomCard({super.key, required this.ic, required this.cardTitle});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        iconColor: const Color(0xFF9c27b0),
        minLeadingWidth: 5,
        leading: Icon(
          ic,
        ),
        title: Text(
          cardTitle,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final String title;
  final double sizeTitle;
  final FontWeight weightTitle;
  final Color colorTitle;
  const UserInfo(
      {super.key,
      required this.title,
      required this.sizeTitle,
      required this.weightTitle,
      required this.colorTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: colorTitle,
        fontFamily: 'JosefinSans',
        fontSize: sizeTitle,
        fontWeight: weightTitle,
      ),
    );
  }
}
