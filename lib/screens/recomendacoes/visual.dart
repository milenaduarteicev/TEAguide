import 'package:flutter/material.dart';
import '../../custom_app_bar.dart';

class CoresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'TEA Guide'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Vocabulário e Visual e Textual',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 16.0), // Espaço entre o título e o primeiro item
            _buildItem(
              context,
              'Cores',
              '- Contraste: Garanta contraste adequado entre fundo e primeiro plano para fácil leitura.\n- Planos de fundo: Use fundos claros para destacar o primeiro plano.\n- Diferenciação: Use cores para separar seções e relacionar conteúdos semelhantes.\n- Rótulos textuais: Sempre associe texto a ícones e verifique contraste para legibilidade.',
            ),
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              context,
              'Textos',
              '- Linguagem simples: Evite jargões, erros ortográficos e metáforas. Use termos familiares e claros.\n- Legibilidade: Utilize linha adequada, evite linhas longas, espaço excessivo e textos alinhados à direita.\n- Prefira caixa baixa e fontes sem serifa como Arial.\n - Consistência: Use uma linguagem direta e evite abreviações e termos técnicos. Escreva textos sucintos e organizados.',
            ),
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              context,
              'Compatibilidade',
              '- Reconhecimento: Use ícones e imagens fáceis de entender. Evite metáforas e utilize representações concretas.\n- Dispositivos móveis: Adapte ações naturais dos dispositivos móveis.\n- Representações visuais: Utilize imagens e textos explicativos para facilitar a compreensão.',
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
          ),
        ],
      ),
    );
  }
}
