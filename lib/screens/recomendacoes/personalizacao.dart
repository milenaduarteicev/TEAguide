import 'package:flutter/material.dart';
import '../../custom_app_bar.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'TEA Guide'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0), // Espaço entre o título e os itens
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Customização',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 16.0), // Espaço entre o título e o primeiro item
            _buildItem(
              context,
              'Visual',
              'Permita ajustar cores, tamanhos de texto e fontes. Inclua modos de alto contraste e personalização de voz.',
            ),
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              context,
              'Informacional',
              'Ofereça informações em formatos variados (texto, áudio, imagem) e permita customização de símbolos e textos.',
            ),
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              context,
              'Funcionalidade',
              'Permita ajustar elementos da tela e personalizar funcionalidades conforme preferências.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(
      BuildContext context, String itemName, String itemDescription) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 4.0), // Espaço entre o texto do item e a descrição
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: itemDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 8.0), // Espaço entre a descrição e a imagem
          Container(
            alignment: Alignment.centerLeft,
            /*
            child: Image.asset(
              imagePath,
              width: double.infinity, // Largura da imagem
              height: 100.0, // Altura da imagem
              fit: BoxFit.cover, // Ajuste a imagem para cobrir o container
            ),*/
          ),
        ],
      ),
    );
  }
}
