import 'package:flutter/material.dart';

class TerminalData extends StatefulWidget {
  const TerminalData({super.key});

  @override
  State<TerminalData> createState() => _TerminalDataState();
}

class _TerminalDataState extends State<TerminalData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados do Terminal"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 16),
        children: [
          const Center(
            child: Text(
              "Dados do Lojista",
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Color.fromRGBO(15, 119, 190, 1.0)),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 2)),

          const Divider(
            color: Colors.black,
            height: 20,
            indent: 30,
            thickness: 1,
            endIndent: 30,
          ),
          //Lojista
          const Text("Lojista", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0))),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "05869 - Casa da Decoração ltda",
              prefixIcon: const Icon(Icons.store),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),

          //MID
          const Text("Merchant Acquirer - MID", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0))),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "ADIQ - 015655000665",
              prefixIcon: const Icon(Icons.storefront_outlined),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),

          //CNPJ/CPF
          const Text(
            "CNPJ/CPF",
            style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0)),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "23.302.105/0001-01",
              prefixIcon: const Icon(Icons.edit_document),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),

          //Dados do terminal
          const Padding(padding: EdgeInsets.only(top: 10)),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Dados do Terminal",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Color.fromRGBO(15, 119, 190, 1.0)),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            indent: 30,
            thickness: 1,
            endIndent: 30,
          ),
          const Text("Terminal Lógico", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0))),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "TERM0122",
              prefixIcon: const Icon(Icons.devices_outlined),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),

          //TID
          const Text("Terminal Acquirer - TID", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0))),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "ADIQ - BW075695",
              prefixIcon: const Icon(Icons.device_hub_sharp),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),

          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Dados do Equipamento",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Color.fromRGBO(15, 119, 190, 1.0)),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            indent: 30,
            thickness: 1,
            endIndent: 30,
          ),

          // Serial
          //TID
          const Text("Serial do Equipamento", style: TextStyle(color: Color.fromRGBO(15, 119, 190, 1.0))),
          const Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "PAX A910 - 1491901329",
              prefixIcon: const Icon(Icons.stay_current_portrait_outlined),
              border: OutlineInputBorder(
                gapPadding: 50,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
        ],
      ),
    );
  }
}
