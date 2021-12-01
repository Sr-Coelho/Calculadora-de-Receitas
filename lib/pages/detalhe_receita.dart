import 'package:flutter/material.dart';
import 'package:vamola/model/receita.dart';

class DetalheReceita extends StatefulWidget {
  const DetalheReceita({Key? key, required this.receita}) : super(key: key);

  final Receita receita;

  @override
  _DetalheReceitaState createState() {
    return _DetalheReceitaState();
  }
}

class _DetalheReceitaState extends State<DetalheReceita> {
  int _valSlider = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receita.rotulo),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.receita.imagemUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.receita.rotulo,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.receita.ingredientes.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingrediente = widget.receita.ingredientes[index];
                  return Text(
                      '${ingrediente.quantidade * _valSlider} ${ingrediente.medida} ${ingrediente.nome}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_valSlider * widget.receita.alimenta} alimenta',
              value: _valSlider.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _valSlider = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
