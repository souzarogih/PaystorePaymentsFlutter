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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("images/main_menu/credito.png", height: 50),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Venda à Crédito",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: Text(
              //     _textValue,
              //     style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              //   ),
              // ),
              TextField(
                controller: _paymentValue,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Valor do pagamento: "),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // print('payment: ${_paymentValue.text}');
                      _doPay(_paymentValue.text);
                    },
                    child: const Text(
                      "Pagar no  Crédito",
                      style: TextStyle(
                        fontSize: 16,
                      ),
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
