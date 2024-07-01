import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teaguide/styles/constants.dart';
import '../styles/styles.dart';

// recomendações
//import 'category_screen.dart';
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

  // Dados personalizáveis com páginas associadas
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
      backgroundColor: Colors.white, // Cor de fundo padrão
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26.0), // Espaço reduzido entre o título e a lista
          // Título Categorias
          Padding(
            padding:
                const EdgeInsets.only(left: 16, bottom: 10), // Ajustado o padding
            child: Text(
              'Categorias',
              style: TextStyle(
                fontFamily: 'Baloo2',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black, // Cor do título
              ),
            ),
          ),

          // Lista de botões suspensos
          Expanded(
            child: ListView.builder(
              itemCount:
                  _filteredCategories.length, // Número de categorias filtradas
              itemBuilder: (context, categoryIndex) {
                final category = _filteredCategories[categoryIndex];
                return Theme(
                  data: ThemeData(
                    // Ajusta a aparência do ExpansionTile
                    dividerColor:
                        Colors.transparent, // Remove as linhas de divisão
                    hintColor:
                        Colors.transparent, // Remove o ícone de seta colorido
                  ),
                  child: ExpansionTile(
                    title: Text(
                      category['title'],
                      style: TextStyle(
                        fontFamily: 'Baloo2',
                        fontWeight: FontWeight.bold,
                        fontSize:
                            18.0, // Ajuste o tamanho da fonte se necessário
                      ),
                    ),
                    trailing: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: kazul, // Cor do círculo
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white, // Cor da seta
                        size: 24.0, // Tamanho da seta
                      ),
                    ),
                    children:
                        List.generate(category['items'].length, (itemIndex) {
                      final item = category['items'][itemIndex];
                      return Container(
                        margin: const EdgeInsets.only(
                            bottom: 0), // Menos espaço entre itens
                        padding:
                            const EdgeInsets.only(left: 16.0, top: 0, bottom: 0), // Padding maior
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
                          title: Text(
                            item['name'],
                            style: TextStyle(
                              fontFamily: 'Baloo2',
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => item[
                                    'page'], // Navega para a página associada
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
