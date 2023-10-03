import 'package:flutter/material.dart';

class ScreenDebito extends StatefulWidget {
  const ScreenDebito({super.key});

  @override
  State<ScreenDebito> createState() => _ScreenDebitoState();
}

class _ScreenDebitoState extends State<ScreenDebito> {
  final TextEditingController _paymentValue = TextEditingController();
  final String _textValue = "0.00";

  void _doPay(String paymentValue) {
    print("Valor: $paymentValue");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Débito"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.all(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/main_menu/debito.png", height: 140),
              const Padding(
                // padding: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(50),
                child: Center(
                  child: Text(
                    "Venda à Débito",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Center(
                  child: TextField(
                    controller: _paymentValue,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 14),
                    decoration: const InputDecoration(
                      labelText: "Valor do pagamento ex: 80,00",
                      alignLabelWithHint: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      contentPadding: EdgeInsets.only(top: 20, bottom: 20, left: 22, right: 22),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  height: 46,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    icon: const Icon(
                      Icons.payment,
                      size: 30,
                    ),
                    onPressed: () {
                      // print('payment: ${_paymentValue.text}');
                      _doPay(_paymentValue.text);
                    },
                    label: const Text(
                      "Pagar no Débito",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
