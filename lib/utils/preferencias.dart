import 'package:shared_preferences/shared_preferences.dart';


class Preferencias {
  static final Preferencias _instancia = Preferencias._internal();

  factory Preferencias() {
    return _instancia;
  }
  Preferencias._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }




  // ? Datos de Usuario //////////////////////////////////////////

  String get token => _prefs.getString('token') ?? '';
  set token( String value ) => _prefs.setString('token', value);
  
  String get nombre => _prefs.getString('nombre') ?? '';
  set nombre( String value ) => _prefs.setString('nombre', value);
  
  String get correo => _prefs.getString('correo') ?? '';
  set correo( String value ) => _prefs.setString('correo', value);

  String get direccion => _prefs.getString('direccion') ?? '';
  set direccion( String value ) => _prefs.setString('direccion', value);
  
  int get telefono => _prefs.getInt('telefono') ?? 00000000;
  set telefono( int value ) => _prefs.setInt('telefono', value);
  



  // ? Gastos y Entradas //////////////////////////////////////////

  String get gastos => _prefs.getString('gastos') ?? '';
  set gastos( String value ) => _prefs.setString('gastos', value);
  
  String get entradas => _prefs.getString('entradas') ?? '';
  set entradas( String value ) => _prefs.setString('entradas', value);





  // ? Datos de Sistema //////////////////////////////////////////

  String get protocolo => _prefs.getString('protocolo') ?? 'https://';
  set protocolo( String value ) => _prefs.setString('protocolo', value);
  
  String get protocoloDev => _prefs.getString('protocoloDev') ?? 'http://';
  set protocoloDev( String value ) => _prefs.setString('protocoloDev', value);
  
  String get host => _prefs.getString('host') ?? '143.198.5.122';
  set host( String value ) => _prefs.setString('host', value);
  

  // ? PC trabajo
  String get hostDev => _prefs.getString('hostDev') ?? '192.168.3.7';
  set hostDev( String value ) => _prefs.setString('hostDev', value);
  
  // ? PC Casa
  // String get hostDev => _prefs.getString('hostDev') ?? '192.168.1.9';
  // set hostDev( String value ) => _prefs.setString('hostDev', value);


  String get port => _prefs.getString('port') ?? ':3200';
  set port( String value ) => _prefs.setString('port', value);
  
  String get enviroment => _prefs.getString('enviroment') ?? 'local';
  set enviroment( String value ) => _prefs.setString('enviroment', value);

  bool get onboarding => _prefs.getBool('onboarding') ?? true;
  set onboarding( bool value ) => _prefs.setBool('onboarding', value);



  clean(){
    _prefs.remove('token');
    _prefs.remove('nombre');
    _prefs.remove('correo');
    _prefs.remove('telefono');
    _prefs.setBool('onboarding', false);
  }

}