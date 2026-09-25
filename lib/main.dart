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
class Canal {
  String nome;

  Canal({
    required this.nome,
  });
}
class Mensagem {
  Usuario autor;
  String texto;

  Mensagem({
    required this.autor,
    required this.texto,
  });
}
void main() {
  print('DARTCORD');
}