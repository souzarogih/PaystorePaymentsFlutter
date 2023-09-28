import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:paystore_payments_flutter/menu_drawer/payments.dart';
import 'package:paystore_payments_flutter/popup_screen/version.dart';
import 'package:paystore_payments_flutter/screens/credito.dart';
import 'package:paystore_payments_flutter/screens/debito.dart';
import 'package:paystore_payments_flutter/screens/parcelado.dart';
import 'package:paystore_payments_flutter/screens/parcelado_juros.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _openCredito() {
    log("Navegação tela credito");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScreenCredito()),
    );
  }

  void _openDedito() {
    log("Navegação tela debito");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScreenDebito()),
    );
  }

  void _openParcelado() {
    log("Navegação tela parcelado");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScreenParcelado()),
    );
  }

  void _openParceladoJuros() {
    log("Navegação tela Parcelado Juros");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScreenParceladoJuros()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          PopupMenuButton(

              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Text("My Account"),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text("Versão"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My account menu is selected.");
            } else if (value == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const VersionScreen()));
              // Navigator.pushNamed(context, "/version");
            } else if (value == 2) {
              print("Logout menu is selected.");
            }
          })
        ],
        title: const Text("PayStore Payments Flutter"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        // Image.asset("images/paystore.png"),
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 8),
          child: SafeArea(
              child: Column(
            children: [
              // Image.asset("images/paystore.png"),
              ListTile(
                dense: true,
                title: const Text("DADOS DO TERMINAL", style: TextStyle(fontSize: 16)),
                leading: const Icon(Icons.person),
                onTap: () {
                  //action when this menu is pressed
                },
              ),
              ListTile(
                dense: true,
                title: const Text("INICIALIZAR", style: TextStyle(fontSize: 16)),
                leading: const Icon(Icons.send),
                onTap: () {
                  const CircularProgressIndicator();
                  //action when this menu is pressed
                },
              ),
              ListTile(
                dense: true,
                title: const Text("PAGAMENTOS", style: TextStyle(fontSize: 16)),
                leading: const Icon(Icons.payments),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Payments()));
                },
              ),
              ListTile(
                dense: true,
                title: const Text("My Favourites", style: TextStyle(fontSize: 16)),
                leading: const Icon(Icons.monitor_heart),
                onTap: () {
                  //action when this menu is pressed
                },
              ),
              ExpansionTile(
                title: const Text("CONFIGURAÇÕES", style: TextStyle(fontSize: 16)),
                leading: const Icon(Icons.settings), //add icon
                childrenPadding: const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: const Text("Child Category 1", style: TextStyle(fontSize: 16)),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: const Text("Child Category 2", style: TextStyle(fontSize: 16)),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              )
            ],
          )),
        ),
      ),
      body: Container(
        // padding: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(top: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/smartcard.png"),
            Padding(
              padding: const EdgeInsets.only(top: 72),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _openCredito,
                    child: Image.asset("images/main_menu/credito.png", height: 100),
                  ),
                  GestureDetector(
                    onTap: _openDedito,
                    child: Image.asset("images/main_menu/debito.png", height: 100),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _openParcelado,
                    child: Image.asset("images/main_menu/parcelado.png", height: 100),
                  ),
                  GestureDetector(
                    onTap: _openParceladoJuros,
                    child: Image.asset("images/main_menu/parceladojuros.png", height: 100),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "PayStore App Corporation",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
