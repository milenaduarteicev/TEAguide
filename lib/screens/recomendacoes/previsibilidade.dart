import 'package:flutter/material.dart';
import 'package:teaguide/styles/constants.dart'; // Importe suas constantes e estilos

class PrevisibilidadePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Setinha branca
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
        backgroundColor: Colors
            .transparent, // Define fundo transparente para aplicar o degradê
        elevation: 0, // Remove a sombra da AppBar
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Text(
                'TEA Guide',
                style: TextStyle(
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white, // Cor do texto
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 20.0,
                backgroundColor:
                    Colors.transparent, // Define fundo transparente
                backgroundImage: AssetImage('assets/icons/logo-branco.png'),
              ),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kazul, kverde], // Gradiente do kazul para o kverde
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0), // Espaço entre o título e os itens
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Reconhecimento e Previsibilidade',
                style: TextStyle(
                  fontFamily: 'Baloo2',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black, // Cor do título
                ),
              ),
            ),
            SizedBox(height: 16.0), // Espaço entre o título e o primeiro item
            _buildItem(
              'Consistência',
              'Mantenha comportamento consistente para elementos interativos.',
              //'assets/images/item1_image.png',
            ),
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              'Aparência clicável',
              'Use ícones e botões grandes e claramente clicáveis.',
            ), //'assets/images/item2_image.png'
            SizedBox(height: 16.0), // Espaço entre os itens
            _buildItem(
              'Feedback de interação',
              'Forneça feedback imediato e claro sobre interações.',
            ), //'assets/images/item3_image.png'
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String itemName, String itemDescription) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemName,
            style: TextStyle(
              fontFamily: 'Baloo2',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.0), // Espaço entre o texto do item e a descrição
          // Use RichText para permitir uma melhor formatação
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: itemDescription,
              style: TextStyle(
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                color: Colors.black54, // Cor da descrição
              ),
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
