import 'package:bpi_biblio/models/adherent.dart';

class AdherentRepository{
  List<Adherent> Adherents = [
    new Adherent(id_adherent: 1, nom: "Aminou", prenom: "Loubna", email: "email1", tel: "tel1"),
    new Adherent(id_adherent: 2, nom: "nom2", prenom: "prenom2", email: "email2", tel: "tel2"),
    new Adherent(id_adherent: 3, nom: "nom3", prenom: "prenom3", email: "email3", tel: "tel3"),
    new Adherent(id_adherent: 4, nom: "nom4", prenom: "prenom4", email: "email4", tel: "tel4"),
    new Adherent(id_adherent: 5, nom: "nom5", prenom: "prenom5", email: "email5", tel: "tel5"),
  ];

  List<Adherent> allAdherents(){
    return this.Adherents;
  }
  void deleteAdherent(int id){
    this.Adherents.removeWhere((element) => element.id_adherent == id);
  }
}