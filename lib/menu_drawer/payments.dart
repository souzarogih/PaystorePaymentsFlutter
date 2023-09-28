import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamentos"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: const Text("Salvar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: const Text("Apagar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: const Text("Alterar"),
                  )
                ],
              ),
            )
            // const Expanded(child: FutureBuilder<List<Payments>>(future: null, builder: (context, snapshot) {
            //   late Widget retorno;
            // } ,),

            // )
          ],
        ),
      ),
    );
  }
}
