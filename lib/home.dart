import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:paystore_payments_flutter/menu_drawer/payments.dart';
import 'package:paystore_payments_flutter/menu_drawer/terminal_data.dart';
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
        backgroundColor: const Color.fromRGBO(15, 119, 190, 1.0),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 1),
          child: SafeArea(
              child: Column(
            children: [
              ListTile(
                dense: true,
                title: Image.asset("images/ps-paystore.png", height: 40),
                // onTap: () {
                //   //action when this menu is pressed
                // },
              ),
              const Divider(color: Colors.grey),
              ListTile(
                dense: true,
                title: const Text("DADOS DO TERMINAL", style: TextStyle(fontSize: 16, color: Color.fromRGBO(15, 119, 190, 1.0))),
                leading: const Icon(Icons.person, color: Color.fromRGBO(15, 119, 190, 1.0)),
                onTap: () {
                  //action when this menu is pressed
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TerminalData()));
                },
              ),
              ListTile(
                dense: true,
                title: const Text("INICIALIZAR", style: TextStyle(fontSize: 16, color: Color.fromRGBO(15, 119, 190, 1.0))),
                leading: const Icon(Icons.send, color: Color.fromRGBO(15, 119, 190, 1.0)),
                onTap: () {
                  const CircularProgressIndicator();
                  //action when this menu is pressed
                },
              ),
              ListTile(
                dense: true,
                title: const Text("PAGAMENTOS", style: TextStyle(fontSize: 16, color: Color.fromRGBO(15, 119, 190, 1.0))),
                leading: const Icon(Icons.payments, color: Color.fromRGBO(15, 119, 190, 1.0)),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Payments()));
                },
              ),
              ListTile(
                dense: true,
                title: const Text("My Favourites", style: TextStyle(fontSize: 16, color: Color.fromRGBO(15, 119, 190, 1.0))),
                leading: const Icon(Icons.monitor_heart, color: Color.fromRGBO(15, 119, 190, 1.0)),
                onTap: () {
                  //action when this menu is pressed
                },
              ),
              ExpansionTile(
                title: const Text("CONFIGURAÇÕES", style: TextStyle(fontSize: 16, color: Color.fromRGBO(15, 119, 190, 1.0))),
                leading: const Icon(Icons.settings, color: Color.fromRGBO(15, 119, 190, 1.0)), //add icon
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
                  const ListTile(
                    title: Text(
                      "V1.0.0",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          )),
        ),
      ),
      body: Container(
        // padding: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Menu Transação",
              style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0), fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Image.asset("images/smartcard.png"),
            Padding(
              padding: const EdgeInsets.only(top: 25),
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
              padding: const EdgeInsets.only(top: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _openParcelado,
                    child: Image.asset("images/main_menu/card-parc.png", height: 100),
                  ),
                  GestureDetector(
                    onTap: _openParceladoJuros,
                    child: Image.asset("images/main_menu/card-parc-juros.png", height: 100),
                  )
                ],
              ),
            ),
            const Padding(
              // padding: EdgeInsets.all(50),
              padding: EdgeInsets.only(top: 78),
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
