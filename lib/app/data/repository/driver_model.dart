class Driver {
  int? id;
  String? token;
  String? nom;
  String? prenom;
  String? telephone;
  String? password;
  int? status;
  int? licence;
  String? gpsLatitude;
  String? gpsLongitude;
  int? proprioId;
  String? proprioNom;
  String? proprioPrenom;
  String? proprioTelephone;
  int? vehiculeId;
  String? vehiculeType;
  String? immatriculation;
  String? language;
  String? theme;
  String? bChangementPass;
  int? idUser;
  String? cleConnexion;
  int? covoiturage;

  Driver(
      {this.id,
      this.token,
      this.nom,
      this.prenom,
      this.telephone,
      this.password,
      this.status,
      this.licence,
      this.gpsLatitude,
      this.gpsLongitude,
      this.proprioId,
      this.proprioNom,
      this.proprioPrenom,
      this.proprioTelephone,
      this.vehiculeId,
      this.vehiculeType,
      this.immatriculation,
      this.language,
      this.theme,
      this.bChangementPass,
      this.idUser,
      this.cleConnexion,
      this.covoiturage});

  Driver.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    nom = json['nom'];
    prenom = json['prenom'];
    telephone = json['telephone'];
    password = json['password'];
    status = json['status'];
    licence = json['licence'];
    gpsLatitude = json['gps_latitude'];
    gpsLongitude = json['gps_longitude'];
    proprioId = json['proprio_id'];
    proprioNom = json['proprio_nom'];
    proprioPrenom = json['proprio_prenom'];
    proprioTelephone = json['proprio_telephone'];
    vehiculeId = json['vehicule_id'];
    vehiculeType = json['vehicule_type'];
    immatriculation = json['immatriculation'];
    language = json['language'];
    theme = json['theme'];
    bChangementPass = json['b_changement_pass'];
    idUser = json['id_user'];
    cleConnexion = json['cle_connexion'];
    covoiturage = json['covoiturage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['nom'] = nom;
    data['prenom'] = prenom;
    data['telephone'] = telephone;
    data['password'] = password;
    data['status'] = status;
    data['licence'] = licence;
    data['gps_latitude'] = gpsLatitude;
    data['gps_longitude'] = gpsLongitude;
    data['proprio_id'] = proprioId;
    data['proprio_nom'] = proprioNom;
    data['proprio_prenom'] = proprioPrenom;
    data['proprio_telephone'] = proprioTelephone;
    data['vehicule_id'] = vehiculeId;
    data['vehicule_type'] = vehiculeType;
    data['immatriculation'] = immatriculation;
    data['language'] = language;
    data['theme'] = theme;
    data['b_changement_pass'] = bChangementPass;
    data['id_user'] = idUser;
    data['cle_connexion'] = cleConnexion;
    data['covoiturage'] = covoiturage;
    return data;
  }
}
