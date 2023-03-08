import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 131, 136),
          title: const Text(
            "Tarefas",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 227, 253, 253),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: const [
            Card(nome: "Dart"),
            Card(nome: "Flutter"),
            Card(nome: "Git"),
            Card(nome: "Figma"),
            Card(nome: "exercicios"),
            Card(nome: "jogar video game"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

//!criando um widget card
class Card extends StatefulWidget {
  final String nome;

  const Card({required this.nome, Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    int nivel = 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: const Color.fromARGB(255, 203, 241, 245),
                height: 140,
              ),
              Column(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 113, 201, 206),
                    height: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 227, 253, 253),
                          height: 95,
                          width: 80,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 227, 253, 253),
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            nivel++;
                          },
                          child: const Icon(
                            Icons.arrow_drop_up_rounded,
                            color: Color.fromARGB(255, 113, 201, 206),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 140,
                        height: 5,
                        color: Colors.black,
                      ),
                      Text("nivel: $nivel"),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
