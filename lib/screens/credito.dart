import 'package:flutter/material.dart';

class ScreenCredito extends StatefulWidget {
  const ScreenCredito({super.key});

  @override
  State<ScreenCredito> createState() => Screen_CreditoState();
}

class Screen_CreditoState extends State<ScreenCredito> {
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
        title: const Text("Credito"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/main_menu/credito.png", height: 140),
              const Padding(
                padding: EdgeInsets.all(50),
                child: Center(
                  child: Text(
                    "Venda à Crédito",
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
                    icon: const Icon(
                      Icons.payment,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      // print('payment: ${_paymentValue.text}');
                      _doPay(_paymentValue.text);
                    },
                    label: const Text(
                      "Pagar no  Crédito",
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
