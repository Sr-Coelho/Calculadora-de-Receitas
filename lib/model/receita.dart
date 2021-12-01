class Receita {
  String rotulo;
  String imagemUrl;

  Receita(
    this.rotulo,
    this.imagemUrl,
    this.alimenta,
    this.ingredientes,
  );

  static List<Receita> samples = [
    Receita(
      'Macarrão com Almondegas',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingrediente(
          1,
          'caixa',
          'Macarrão',
        ),
        Ingrediente(
          4,
          '',
          'Almondegas Congeladas',
        ),
        Ingrediente(
          0.5,
          'jarra',
          'molho',
        ),
      ],
    ),
    Receita(
      'Sopa de Tomate',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingrediente(
          1,
          'lata',
          'Sopa de Tomate',
        ),
      ],
    ),
    Receita(
      'Queijo Quente',
      'assets/3187380632_5056654a19_b.jpg',
      1,
      [
        Ingrediente(
          2,
          'pedaços',
          'Queijo',
        ),
        Ingrediente(
          2,
          'pedaços',
          'Pão',
        ),
      ],
    ),
    Receita(
      'Biscoitos de Gotas de Chocolate',
      'assets/15992102771_b92f4cc00a_b.jpg',
      24,
      [
        Ingrediente(
          4,
          'xicaras',
          'Farinha',
        ),
        Ingrediente(
          2,
          'xicaras',
          'Açucar',
        ),
        Ingrediente(
          0.5,
          'xicaras',
          'Gotas de Chocolate',
        ),
      ],
    ),
    Receita(
      'Salada de Tacos',
      'assets/8533381643_a31a99e8a6_c.jpg',
      1,
      [
        Ingrediente(
          4,
          'pacote',
          'Nachos',
        ),
        Ingrediente(
          3,
          'pacote',
          'Carne para Tacos',
        ),
        Ingrediente(
          0.5,
          'pedaços',
          'Queijo',
        ),
        Ingrediente(
          0.25,
          'pedaços',
          'Tomates Cortados',
        ),
      ],
    ),
    Receita(
      'Pizza Havaiana',
      'assets/15452035777_294cefced5_c.jpg',
      4,
      [
        Ingrediente(
          1,
          'item',
          'Pizza',
        ),
        Ingrediente(
          1,
          'xicara',
          'Abacaxi',
        ),
        Ingrediente(
          8,
          'pedaços',
          'Bacon',
        ),
      ],
    ),
  ];

  int alimenta;

  List<Ingrediente> ingredientes;
}

class Ingrediente {
  double quantidade;
  String medida;
  String nome;

  Ingrediente(
    this.quantidade,
    this.medida,
    this.nome,
  );
}
