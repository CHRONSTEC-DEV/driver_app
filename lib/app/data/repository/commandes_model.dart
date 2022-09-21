class Commandes {
  bool? bSuccess;
  String? message;
  bool? etatConnexion;
  List<Compte>? compte;
  Datas? datas;

  Commandes(
      {this.bSuccess,
      this.message,
      this.etatConnexion,
      this.compte,
      this.datas});

  Commandes.fromJson(Map<String, dynamic> json) {
    bSuccess = json['bSuccess'];
    message = json['message'];
    etatConnexion = json['etat_connexion'];
    if (json['compte'] != null) {
      compte = <Compte>[];
      json['compte'].forEach((v) {
        compte?.add(Compte.fromJson(v));
      });
    }
    datas = json['datas'] != null ? Datas?.fromJson(json['datas']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bSuccess'] = bSuccess;
    data['message'] = message;
    data['etat_connexion'] = etatConnexion;
    if (compte != null) {
      data['compte'] = compte?.map((v) => v.toJson()).toList();
    }
    if (datas != null) {
      data['datas'] = datas?.toJson();
    }
    return data;
  }
}

class Compte {
  int? statusCompte;
  dynamic solde;

  Compte({this.statusCompte, this.solde});

  Compte.fromJson(Map<String, dynamic> json) {
    statusCompte = json['status_compte'];
    solde = json['solde'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status_compte'] = statusCompte;
    data['solde'] = solde;
    return data;
  }
}

class Datas {
  String? entete;
  List<Commande>? commande;

  Datas({this.entete, this.commande});

  Datas.fromJson(Map<String, dynamic> json) {
    entete = json['entete'];
    if (json['commande'] != null) {
      commande = <Commande>[];
      json['commande'].forEach((v) {
        commande?.add(Commande.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['entete'] = entete;
    if (commande != null) {
      data['commande'] = commande?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Commande {
  int? id;
  int? duree;
  int? dureeRestante;
  int? montantReel;
  int? montantPercu;
  int? montantNegocie;
  String? destLibelle;
  double? destLongitude;
  double? destLatitude;
  double? clientLongitude;
  double? clientLatitude;
  int? clientId;
  String? clientTelephone;
  int? status;
  String? clientLibelle;
  int? enumCategorie;
  String? categorieLibelle;
  String? dateDernierChangementEtat;
  String? origineTelephone;
  String? origineLibelle;
  String? destTelephone;
  String? description;
  String? origineBatiment;
  String? originePorte;
  String? destNom;
  String? destBatiment;
  String? destPorte;
  int? statusPaiement;
  String? dateCommande;

  Commande(
      {this.id,
      this.duree,
      this.dureeRestante,
      this.montantReel,
      this.montantPercu,
      this.montantNegocie,
      this.destLibelle,
      this.destLongitude,
      this.destLatitude,
      this.clientLongitude,
      this.clientLatitude,
      this.clientId,
      this.clientTelephone,
      this.status,
      this.clientLibelle,
      this.enumCategorie,
      this.categorieLibelle,
      this.dateDernierChangementEtat,
      this.origineTelephone,
      this.origineLibelle,
      this.destTelephone,
      this.description,
      this.origineBatiment,
      this.originePorte,
      this.destNom,
      this.destBatiment,
      this.destPorte,
      this.statusPaiement,
      this.dateCommande});

  Commande.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    duree = json['duree'];
    dureeRestante = json['duree_restante'];
    montantReel = json['montant_reel'];
    montantPercu = json['montant_percu'];
    montantNegocie = json['montant_negocie'];
    destLibelle = json['dest_libelle'];
    destLongitude = json['dest_longitude'];
    destLatitude = json['dest_latitude'];
    clientLongitude = json['client_longitude'];
    clientLatitude = json['client_latitude'];
    clientId = json['client_id'];
    clientTelephone = json['client_telephone'];
    status = json['status'];
    clientLibelle = json['client_libelle'];
    enumCategorie = json['enum_categorie'];
    categorieLibelle = json['categorie_libelle'];
    dateDernierChangementEtat = json['date_dernier_changement_etat'];
    origineTelephone = json['origine_telephone'];
    origineLibelle = json['origine_libelle'];
    destTelephone = json['dest_telephone'];
    description = json['description'];
    origineBatiment = json['origine_batiment'];
    originePorte = json['origine_porte'];
    destNom = json['dest_nom'];
    destBatiment = json['dest_batiment'];
    destPorte = json['dest_porte'];
    statusPaiement = json['status_paiement'];
    dateCommande = json['date_commande'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['duree'] = duree;
    data['duree_restante'] = dureeRestante;
    data['montant_reel'] = montantReel;
    data['montant_percu'] = montantPercu;
    data['montant_negocie'] = montantNegocie;
    data['dest_libelle'] = destLibelle;
    data['dest_longitude'] = destLongitude;
    data['dest_latitude'] = destLatitude;
    data['client_longitude'] = clientLongitude;
    data['client_latitude'] = clientLatitude;
    data['client_id'] = clientId;
    data['client_telephone'] = clientTelephone;
    data['status'] = status;
    data['client_libelle'] = clientLibelle;
    data['enum_categorie'] = enumCategorie;
    data['categorie_libelle'] = categorieLibelle;
    data['date_dernier_changement_etat'] = dateDernierChangementEtat;
    data['origine_telephone'] = origineTelephone;
    data['origine_libelle'] = origineLibelle;
    data['dest_telephone'] = destTelephone;
    data['description'] = description;
    data['origine_batiment'] = origineBatiment;
    data['origine_porte'] = originePorte;
    data['dest_nom'] = destNom;
    data['dest_batiment'] = destBatiment;
    data['dest_porte'] = destPorte;
    data['status_paiement'] = statusPaiement;
    data['date_commande'] = dateCommande;
    return data;
  }
}
