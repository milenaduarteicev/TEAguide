import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teaguide/styles/constants.dart';
import '../styles/styles.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor de fundo padrão
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/imagens/img-login.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 100.0), // Espaço entre a imagem do topo e a logo
            Image.asset('assets/imagens/logo.png', height: 100.0),
            SizedBox(height: 20.0),
            Text(
              'TEAGuide',
              style: Styles.appNameStyle,
            ),
            SizedBox(height: 3), // Espaço entre o nome do app e a descrição
            Text(
              'Guia de desenvolvimento de telas acessíveis\n e inclusivas focado em pessoas com TEA.',
              style: TextStyle(
                fontFamily: 'Baloo2',
                fontSize: 16.0,
                color: Colors.grey[700], // Cor da descrição
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Navegar para a HomeScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  width: 220.0, // Largura fixa para o botão
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [kazul, kverde],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(
                        8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Deslocamento da sombra
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10.0),
                      Text('Crie com a gente',
                          style: Styles.googleButtonText),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
