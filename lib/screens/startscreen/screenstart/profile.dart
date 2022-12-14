import 'package:flutter/material.dart';

import '../../../logo.dart';
import '../../../peremen.dart';
import '../../../root.dart';
import '../appbar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

String strock(String namefam, String name, String otchestvo) {
  String str = "$namefam $name $otchestvo";
  // ignore: avoid_print
  print(str.length);
  if (str.length >= 27 && str.length < 50) {
    return "$namefam $name\n$otchestvo";
  } else if (str.length >= 50) {
    return "$namefam\n$name\n$otchestvo";
  } else {
    return "$namefam $name $otchestvo";
  }
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: logo(context, Colors.black),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle, size: 70),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    strock(ag!.namefam, ag!.name, ag!.otchestvo),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Номер счета: " + ag!.id.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Тип прав: " + root(ag!.root),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Spacer(),
          appbar(context),
        ],
      ),
    );
  }
}
