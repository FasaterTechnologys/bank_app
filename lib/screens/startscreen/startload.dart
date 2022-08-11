import 'package:bank_app/screens/startscreen/startscreen.dart';
import 'package:flutter/material.dart';
import '../../loadservic.dart';
import '../../logo.dart';
import '../login/login.dart';
import 'appbar.dart';

class StartLoad extends StatefulWidget {
  const StartLoad({Key? key}) : super(key: key);

  @override
  State<StartLoad> createState() => _StartLoadState();
}

class _StartLoadState extends State<StartLoad> {
  void load(BuildContext context) async {
    int id = await getSLoadString();
    onOrOfScreen(id);
  }

  void onOrOfScreen(int id) {
    if (id != 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const StartScreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Login()));
    }
  }

  @override
  void initState() {
    load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(child: logo(context, Colors.black)),
          const Spacer(),
          const CircularProgressIndicator(
            backgroundColor: Color.fromRGBO(196, 196, 196, 0.3),
          ),
          const Spacer(),
          appbar(context),
        ],
      ),
    );
  }
}
