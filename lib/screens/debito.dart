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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("images/main_menu/debito.png", height: 50),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Venda à Débito",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
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
                      "Pagar no Débito",
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
