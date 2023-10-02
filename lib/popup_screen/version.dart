import 'package:flutter/material.dart';

class VersionScreen extends StatefulWidget {
  const VersionScreen({super.key});

  @override
  State<VersionScreen> createState() => _VersionScreenState();
}

class _VersionScreenState extends State<VersionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 170),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/ps-paystore.png",
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                ),
                child: Center(
                  child: Text(
                    "Paystore Flutter App Demo \n                   1.0.0",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Icon(Icons.abc),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
