import 'package:flutter/material.dart';
import 'package:vamola/pages/detalhe_receita.dart';
import 'model/receita.dart';

void main() {
  runApp(const CalculadoraDeReceitas());
}

class CalculadoraDeReceitas extends StatelessWidget {
  const CalculadoraDeReceitas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Calculadora de Receitas',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Calculadora de Receitas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: Receita.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetalheReceita(
                              receita: Receita.samples[index]);
                        },
                      ),
                    );
                  },
                  child: buildRecipeCard(Receita.samples[index]));
            },
          ),
        ));
  }

  Widget buildRecipeCard(Receita receita) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(receita.imagemUrl)),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              receita.rotulo,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
