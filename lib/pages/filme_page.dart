import 'package:cinemeu/componentes/filme_item.dart';
import 'package:cinemeu/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmePage extends StatelessWidget {
  const FilmePage({super.key});

  @override
  Widget build(BuildContext context) {
    final filmeVM = Provider.of<FilmeViewModel>(context);
    final filmes = filmeVM.filmes;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinema X"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) => FilmeItem(
          filme: filmes[index],
        ),
      ),
    );
  }
}
