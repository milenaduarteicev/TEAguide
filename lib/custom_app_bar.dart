import 'package:flutter/material.dart';
import 'styles/constants.dart';
import 'theme_provider.dart'; 
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  CustomAppBar({required this.title, this.showBackButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
            )
          : null,
      backgroundColor: Colors
          .transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
            Spacer(),
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/icons/logo-branco.png'),
            ),
            PopupMenuButton<String>(
              onSelected: (String value) {
                if (value == 'Alternar tema') {
                  // Alternar tema
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                }
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (BuildContext context) {
                return {'Alternar tema'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(
                      choice,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.black),
                    ),
                  );
                }).toList();
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: kGradient,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
