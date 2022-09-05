const String tableCuentas = 'cuentas';

class CuentasFields {
  static const List<String> values = [
    id, nombre, credito, tipo, createdAt, activa
  ];

  static const String id = '_id';
  static const String nombre = 'nombre';
  static const String banco = 'banco';
  static const String numero = 'numero';
  static const String credito = 'credito';
  static const String tipo = 'tipo';
  static const String createdAt = 'created_at';
  static const String activa = 'activa';
}

class Cuenta {
  final int? id;
  final String nombre;
  final String banco;
  final String numero;
  final double credito;
  final int tipo;
  final DateTime createdAt;
  final bool activa;

  const Cuenta({
    this.id, 
    required this.nombre, 
    required this.banco, 
    required this.numero, 
    required this.credito, 
    required this.tipo, 
    required this.createdAt, 
    this.activa = true, 
  });

  Map<String, dynamic> toJson() =>{
    CuentasFields.id: id,
    CuentasFields.nombre: nombre,
    CuentasFields.banco: banco,
    CuentasFields.numero: numero,
    CuentasFields.credito: credito,
    CuentasFields.tipo: tipo,
    CuentasFields.createdAt: createdAt.toIso8601String(),
    CuentasFields.activa: activa ? 1 : 0,
  };

  static Cuenta fromJson(Map<String, dynamic> json) => Cuenta(
    id: json[CuentasFields.id] as int?,
    nombre: json[CuentasFields.nombre] as String,
    banco: json[CuentasFields.banco] as String,
    numero: json[CuentasFields.numero] as String,
    credito: json[CuentasFields.credito] as double,
    tipo: json[CuentasFields.tipo] as int,
    createdAt: DateTime.parse(json[CuentasFields.createdAt] as String),
    activa: json[CuentasFields.activa] == 1,
  );

  Cuenta copy({
    int? id,
    String? nombre,
    String? banco,
    String? numero,
    double? credito,
    int? tipo,
    DateTime? createdAt,
    bool? activa,
  }) => Cuenta(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    banco: banco ?? this.banco,
    numero: numero ?? this.numero,
    credito: credito ?? this.credito,
    tipo: tipo ?? this.tipo,
    createdAt: createdAt ?? this.createdAt,
    activa: activa ?? this.activa
  ); 
 
  



}