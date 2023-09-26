import 'package:flutter/material.dart';

class ScreenParcelado extends StatefulWidget {
  const ScreenParcelado({super.key});

  @override
  State<ScreenParcelado> createState() => _ScreenParceladoState();
}

class _ScreenParceladoState extends State<ScreenParcelado> {
  final TextEditingController _paymentValue = TextEditingController();
  final String _textValue = "0.00";

  String? _escolhaUsuario;

  void _doPay(String paymentValue) {
    print("Valor: $paymentValue");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Parcelado"),
        backgroundColor: Colors.yellow.shade800,
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
                  Image.asset("images/main_menu/parcelado.png", height: 50),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Venda Parcelada",
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
              RadioListTile(
                title: const Text("2x"),
                value: "2",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: $escolha");
                },
              ),
              RadioListTile(
                title: const Text("3x"),
                value: "3",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("Resultado: $escolha");
                },
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
                      "Pagar Parcelado",
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
