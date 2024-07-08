import 'package:flutter/material.dart';
import 'package:teaguide/styles/constants.dart';
import '../custom_app_bar.dart';

// recomendações
import 'recomendacoes/acoes.dart';
import 'recomendacoes/envolvimento.dart';
import 'recomendacoes/multimidia.dart';
import 'recomendacoes/navegacao.dart';
import 'recomendacoes/personalizacao.dart';
import 'recomendacoes/previsibilidade.dart';
import 'recomendacoes/representacao.dart';
import 'recomendacoes/sistema.dart';
import 'recomendacoes/toque_tela.dart';
import 'recomendacoes/visual.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _filteredCategories = [];

  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Visual/Textual',
      'items': [
        {
          'name': 'Cores',
          'page': CoresPage(),
        },
        {
          'name': 'Textos',
          'page': CoresPage(),
        },
        {
          'name': 'Legibilidade',
          'page': CoresPage(),
        },
        {
          'name': 'Compatibilidade',
          'page': CoresPage(),
        },
      ],
    },
    {
      'title': 'Customização',
      'items': [
        {
          'name': 'Customização visual',
          'page': CustomPage(),
        },
        {
          'name': 'Customização informacional',
          'page': CustomPage(),
        },
        {
          'name': 'Interfaces flexíveis',
          'page': CustomPage(),
        },
      ],
    },
    {
      'title': 'Engajamento',
      'items': [
        {
          'name': 'Eliminar distrações',
          'page': EngajamentoPage(),
        },
        {
          'name': 'Interface minimalista',
          'page': EngajamentoPage(),
        },
        {
          'name': 'Organização visual',
          'page': EngajamentoPage(),
        },
        {
          'name': 'Instruções claras',
          'page': EngajamentoPage(),
        },
      ],
    },
    {
      'title': 'Representações',
      'items': [
        {
          'name': 'Múltiplos formatos',
          'page': RepresentacaoPage(),
        },
        {
          'name': 'Equivalentes textuais',
          'page': RepresentacaoPage(),
        },
        {
          'name': 'Legendas',
          'page': RepresentacaoPage(),
        },
      ],
    },
    {
      'title': 'Multimídia',
      'items': [
        {
          'name': 'Múltiplas mídias',
          'page': MidiaPage(),
        },
        {
          'name': 'Ampliação de imagens',
          'page': MidiaPage(),
        },
        {
          'name': 'Evite sons perturbadores',
          'page': MidiaPage(),
        },
      ],
    },
    {
      'title': 'Visibilidade do Estado do Sistema',
      'items': [
        {
          'name': 'Instruções de interação',
          'page': VisibilidadePage(),
        },
        {
          'name': 'Reverter ações',
          'page': VisibilidadePage(),
        },
        {
          'name': 'Número de tentativas',
          'page': VisibilidadePage(),
        },
      ],
    },
    {
      'title': 'Reconhecimento e Previsibilidade',
      'items': [
        {
          'name': 'Consistência',
          'page': PrevisibilidadePage(),
        },
        {
          'name': 'Aparência clicável',
          'page': PrevisibilidadePage(),
        },
        {
          'name': 'Feedback de interação',
          'page': PrevisibilidadePage(),
        },
      ],
    },
    {
      'title': 'Navegabilidade',
      'items': [
        {
          'name': 'Navegação simples',
          'page': NavegacaoPage(),
        },
        {
          'name': 'Evitar redirecionamentos',
          'page': NavegacaoPage(),
        },
      ],
    },
    {
      'title': 'Ações',
      'items': [
        {
          'name': 'Confirmação de ações',
          'page': AcoesPage(),
        },
      ],
    },
    {
      'title': 'Sensibilidade da Tela',
      'items': [
        {
          'name': 'Sensibilidade adequada',
          'page': ToquePage(),
        },
      ],
    },
  ];

  @override
  void initState() {
    super.initState();
    _filteredCategories = categories;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'TEA Guide'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26.0), 

          Padding(
            padding: const EdgeInsets.only(
                left: 16, bottom: 10),
            child: Text(
              'Categorias',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount:
                  _filteredCategories.length,
              itemBuilder: (context, categoryIndex) {
                final category = _filteredCategories[categoryIndex];
                return Theme(
                  data: ThemeData(
                    dividerColor:
                        Colors.transparent,
                    hintColor:
                        Colors.transparent,
                  ),
                  child: ExpansionTile(
                    title: Text(
                      category['title'],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: kazul,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                    children:
                        List.generate(category['items'].length, (itemIndex) {
                      final item = category['items'][itemIndex];
                      return Container(
                        margin: const EdgeInsets.only(
                            bottom: 0),
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 0, bottom: 0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 0),
                          title: Text(
                            item['name'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => item[
                                    'page'],
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
