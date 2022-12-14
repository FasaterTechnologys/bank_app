import 'package:flutter/material.dart';
import 'package:bank_app/screens/registr/registr.dart';

Widget accpred(BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Нет аккаунта?",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat")),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Registr()));
          },
          child: const Text("Регистрация",
              style: TextStyle(
                  color: Color.fromRGBO(62, 76, 200, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat")),
        ),
      ],
    ),
  );
}
