import 'package:flutter/material.dart';
import 'package:paystore_payments_flutter/home.dart';
import 'package:paystore_payments_flutter/popup_screen/version.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/version": (context) => const VersionScreen(),
      },
    ),
  );
}
