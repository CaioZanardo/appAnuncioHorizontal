import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.black,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anúncios de Óculos Oakley"),
      centerTitle: true,
      backgroundColor: Colors.red,
    );
  }

  _corpo() {
    return Container(
      child: PageView(
        children: <Widget>[
          _anuncio('Óculos Linha X-Metal', 'romeo1.jpg',
              'Vende-se Romeo 1 Reliquia R\$ 50.000 '),
          _anuncio('Óculos Linha X-Metal', 'marsJ.jpg',
              'Vende-se Mars Jordan Reliquia R\$ 60.000'),
          _anuncio('Óculos Linha X-Metal', 'juju.jpg',
              'Vende-se Juliet Ducati Reliquia R\$ 40.000'),
          _anuncio(
              'Óculos Casual', 'holbrook.jpg', 'Vende-se Holbrook R\$ 1.000'),
          _anuncio(
              'Óculos Lancamento', 'plazma.jpg', 'Vende-se Plazma R\$ 1.500'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "fotos/$nomeFoto",
      height: 300,
      width: 300,
      fit: BoxFit.contain,
    );
  }

  _textoAnuncio(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }

  _tituloAnuncio(String titulo) {
    return Text(
      titulo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontSize: 36,
      ),
    );
  }

  _anuncio(String tituloAnuncio, String caminhoFoto, String texto) {
    return Container(
      child: Column(children: <Widget>[
        SizedBox(height: 15),
        _tituloAnuncio(tituloAnuncio),
        _foto(caminhoFoto),
        _textoAnuncio(texto),
      ]),
    );
  }
}