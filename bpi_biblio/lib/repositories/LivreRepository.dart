import 'dart:core';

import '../models/livre.dart';

class LivreRepository{
  List<Livre> livres = [
    new Livre(id_livre: 1, isbn: "ISBN1", titre: "Titre1", auteur: "Auteur1", annee_publication: DateTime.now(), nb_exemplaires: 5, prix: 123.45),
    new Livre(id_livre: 2, isbn: "ISBN2", titre: "Title2", auteur: "Auteur2", annee_publication: DateTime.now(), nb_exemplaires: 11, prix: 123.45),
    new Livre(id_livre: 3, isbn: "ISBN3", titre: "Titre3", auteur: "Auteur3", annee_publication: DateTime.now(), nb_exemplaires: 2, prix: 123.45),
    new Livre(id_livre: 4, isbn: "ISBN4", titre: "Titre4", auteur: "Auteur4", annee_publication: DateTime.now(), nb_exemplaires: 3, prix: 123.45),
    new Livre(id_livre: 5, isbn: "ISBN5", titre: "Title5", auteur: "Auteur5", annee_publication: DateTime.now(), nb_exemplaires: 7, prix: 123.45),
  ];

  List<Livre> allLivres(){
    return this.livres;
  }

  List<Livre> findLivres(String key){
    return this.livres.where((element) => element.titre.contains(key)).toList();
  }

  void deleteLivre(int id){
    this.livres.removeWhere((element) => element.id_livre == id);
  }
}

