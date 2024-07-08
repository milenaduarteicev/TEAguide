import 'package:flutter/material.dart';
import 'package:teaguide/styles/constants.dart';
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  width: 220.0,
                  decoration: Styles.googleButtonDecoration,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Center(
                    child: Text('Crie com a gente',
                        style: Styles.googleButtonText),
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
