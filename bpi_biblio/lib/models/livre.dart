class Livre{
  int id_livre;
  String isbn;
  String titre;
  String auteur;
  DateTime annee_publication;
  int nb_exemplaires;
  double prix;

  Livre(
      {required this.id_livre,
        required this.isbn,
        required this.titre,
        required this.auteur,
        required this.annee_publication,
        required this.nb_exemplaires,
        required this.prix});
}