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
                  top: 50,
                  bottom: 80,
                ),
                child: Center(
                  child: Text(
                    "Paystore Flutter App Demo",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.developer_mode, size: 40, color: Color.fromRGBO(15, 119, 190, 1.0)),
                          Text(
                            "Flutter",
                            style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.devices_fold,
                            size: 40,
                            color: Color.fromRGBO(15, 119, 190, 1.0),
                          ),
                          Text(
                            "SmartPOS",
                            style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.star, size: 36, color: Color.fromRGBO(15, 119, 190, 1.0)),
                          Text("5", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0)))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // const Text("V1.0.0"),
              const Padding(
                // padding: EdgeInsets.all(50),
                padding: EdgeInsets.only(top: 200),
                child: Text(
                  "V1.0.0",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
