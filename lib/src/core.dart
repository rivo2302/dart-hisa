// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.

class Hisa {
  int number = 0;
  Hisa(int number){
    this.number = number;
  }
  final List<String> tokana = [
    "",
    "ray",
    "roa",
    "telo",
    "efatra",
    "dimy",
    "enina",
    "fito",
    "valo",
    "sivy",
    "folo",
  ];
  final List<String> folo = [
    "",
    "folo",
    "roapolo",
    "telopolo",
    "efapolo",
    "dimampolo",
    "enimpolo",
    "fitopolo",
    "valopolo",
    "sivifolo"
  ];
  final List<String> zato = [
    "",
    "zato",
    "roanjato",
    "telonjato",
    "efajato",
    "dimanjato",
    "eninjato",
    "fitonjato",
    "valonjato",
    "sivanjato"
  ];


  int? _length(int nb) {
    if (nb < 10) {
      return 1;
    } else if (nb < 100) {
      return 2;
    } else if (nb < 1000) {
      return 3;
    } else if (nb < 10000) {
      return 4;
    } else if (nb < 100000) {
      return 5;
    } else if (nb < 1000000) {
      return 6;
    } else if (nb < 1000000000) {
      return 7;
    } else if (nb < 1000000000000) {
      return 8;
    } else {
      return null;
    }
  }

  String _ray(int nb) {
    String res = nb == 0 ? "Aotra" : tokana[nb];
    return res;
  }

  String _roa(int nb) {
    var modulo = nb % 10;
    var quotient = nb ~/ 10;
    if (modulo == 0) {
      return folo[quotient];
    }
    if (quotient == 1) {
      if (modulo == 1) {
        return "iraika ambin'ny folo";
      }
      return "${tokana[modulo]} ambiny folo";
    } else if (modulo == 1) {
      return "iraika amby ${folo[quotient]}";
    }
    return "${tokana[modulo]} amby ${folo[quotient]}";
  }

  String _telo(int nb){
    var modulo = nb % 100;
    var quotient = nb ~/ 100;   

    if (modulo == 0 ) {
      return zato[quotient];
    }
    else if (quotient == 1 ){
      return "${Hisa(modulo)} amby zato";
    }
    return ("${Hisa(modulo)} sy ${zato[quotient]}");
  }

  String _efatra(int nb){
    var modulo = nb % 1000;
    var quotient = nb ~/ 1000;   

    if (modulo == 0 ){
      if (quotient == 1 ){
        return  "arivo";
      }
      else {
        return "${tokana[quotient]} arivo";
      }
    }
    else if (quotient == 1 ){
        return "${Hisa(quotient)} arivo";
    }
    return "${Hisa(modulo)} sy ${tokana[quotient]} arivo";
  }

  String _dimy (int nb){
    var modulo = nb % 10000;
    var quotient = nb ~/ 10000;   
     if (modulo == 0){
      return "${tokana[quotient]} alina";
     }
    return "${Hisa(modulo)} sy ${tokana[quotient]} alina";
  }

  String _enina (int nb){
    var modulo = nb % 100000;
    var quotient = nb ~/ 100000;   
     if (modulo == 0){
      return "${tokana[quotient]} hetsy";
     }
    return "${Hisa(modulo)} sy ${tokana[quotient]} hetsy";
  }

  String _fito (int nb){
    var modulo = nb % 1000000;
    var quotient = nb ~/ 1000000;   
     if (modulo == 0){
      return "${Hisa(quotient)} tapitrisa";
     }
    return "${Hisa(modulo)} sy ${Hisa(quotient)} tapitrisa";
  }

  String _valo (int nb){
    var modulo = nb % 1000000000;
    var quotient = nb ~/ 1000000000;   
     if (modulo == 0){
      return "${Hisa(quotient)} lavitrisa";
     }
    return "${Hisa(modulo)} sy ${Hisa(quotient)} lavitrisa";
  }

  @override
  String toString() {
    switch (_length(number) ){
      case 1: 
        return _ray(number);
      case 2: 
        return _roa(number);
      case 3: 
        return _telo(number);
      case 4:
        return _efatra(number);
      case 5:
        return _dimy(number);
      case 6 :
        return _enina(number);
      case 7 : 
        return _fito(number);
      case 8 : 
        return _valo(number);
    } 
   throw FormatException("Number is too big");
  }
}


