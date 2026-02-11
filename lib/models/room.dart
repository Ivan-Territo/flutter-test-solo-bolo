class Room {
  int id;
  String nomeStanza;
  String tipologia;
  int prezzoNotte;
  int postiLetto;
  List<String> servizi;
  bool disponibile;
  String urlImage;

  // Costruttore
  Room({
    required this.id,
    required this.nomeStanza,
    required this.tipologia,
    required this.prezzoNotte,
    required this.postiLetto,
    required this.servizi,
    required this.disponibile,
    required this.urlImage,
  });

  // Factory per creare oggetto da JSON
  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      nomeStanza: json['nome_stanza'],
      tipologia: json['tipologia'],
      prezzoNotte: json['prezzo_notte'],
      postiLetto: json['posti_letto'],
      servizi: List<String>.from(json['servizi']),
      disponibile: json['disponibile'],
      urlImage: json['url_immagine'],
    );
  }
}
