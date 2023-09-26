import 'package:flutter/material.dart';

class ScreenParceladoJuros extends StatefulWidget {
  const ScreenParceladoJuros({super.key});

  @override
  State<ScreenParceladoJuros> createState() => _ScreenParceladoJurosState();
}

class _ScreenParceladoJurosState extends State<ScreenParceladoJuros> {
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
        title: const Text("Parcelado C/ Juros"),
        backgroundColor: Colors.purple,
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
                  Image.asset("images/main_menu/parceladojuros.png", height: 50),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Venda Parcelada com Juros",
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
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text("Parcelas"),
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
                      "Pagar Parcelado Juros",
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
