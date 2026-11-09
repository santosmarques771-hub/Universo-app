import 'package:flutter/material.dart';

void main() => runApp(const UniversoApp());

class UniversoApp extends StatelessWidget {
  const UniversoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universo',
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Universo - Seu Universo de Compras'), backgroundColor: Colors.purple),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          ProdutoCard(nome: 'Fone Bluetooth Ultra', preco: 189.90),
          ProdutoCard(nome: 'Cafeteira Elétrica', preco: 249.00),
          ProdutoCard(nome: 'Tênis RunFit', preco: 319.90),
          ProdutoCard(nome: 'Moedor de Café', preco: 129.90),
        ],
      ),
    );
  }
}

class ProdutoCard extends StatelessWidget {
  final String nome; final double preco;
  const ProdutoCard({super.key, required this.nome, required this.preco});
  @override
  Widget build(BuildContext context) {
    double lucro = preco * 0.20;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(nome, style: const TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          const SizedBox(height: 5),
          Text('R\$ $preco', style: const TextStyle(color: Colors.purple, fontSize: 16)),
          Text('Seu lucro: R\$ ${lucro.toStringAsFixed(2)}', style: const TextStyle(color: Colors.green, fontSize: 12)),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: (){}, child: const Text('Comprar'))
        ]),
      ),
    );
  }
}
