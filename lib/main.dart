class Usuario {
  String nome;
  String apelido;
  bool online;

  Usuario({
    required this.nome,
    required this.apelido,
    required this.online,
  });
}
class Moderador extends Usuario {
  Moderador({
    required String nome,
    required String apelido,
    required bool online,
  }) : super(
          nome: nome,
          apelido: apelido,
          online: online,
        );
}
class Mensagem {
  Usuario autor;
  String texto;

  Mensagem({
    required this.autor,
    required this.texto,
  });
}
class Canal {
  String nome;
  List<Mensagem> mensagens = [];

  Canal({
    required this.nome,
  });

  void adicionarMensagem(Mensagem mensagem) {
    mensagens.add(mensagem);
  }
}
void main() {
  print('DARTCORD');

  final usuario = Usuario(
    nome: 'Pedro',
    apelido: 'PG',
    online: true,
  );

final moderador = Moderador(
    nome: 'Ana',
    apelido: 'Ana',
    online: true,
  );

  final canal = Canal(
    nome: 'dart',
  );
  
   final mensagem1 = Mensagem(
    autor: usuario,
    texto: 'Olá, DartCord!',
  );

  final mensagem2 = Mensagem(
    autor: moderador,
    texto: 'Continuem praticando.',
  );

  canal.adicionarMensagem(mensagem1);
  canal.adicionarMensagem(mensagem2);

print('Canal: #${canal.nome}');

for (final mensagem in canal.mensagens) {
  print('${mensagem.autor.apelido}: ${mensagem.texto}');
}

}