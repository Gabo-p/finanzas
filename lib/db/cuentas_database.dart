import 'package:finanzas_personales/models/cuenta_model.dart';
import 'package:sqflite/sqflite.dart';

class CuentasDatabase {
  static final CuentasDatabase instance = CuentasDatabase._init();

  static Database? _database;

  CuentasDatabase._init();


  Future<Database> get database async {
    if(_database != null) return _database!;
    _database = await _initDB('cuentas.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = '$dbPath/$filePath';
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';
    const doubleType = 'DOUBLE NOT NULL';
    const stringType = 'TEXT NOT NULL';
    const dateType = 'DATETIME NOT NULL';

    await db.execute('''
      CREATE TABLE $tableCuentas ( 
        ${CuentasFields.id} $idType,
        ${CuentasFields.nombre} $stringType,
        ${CuentasFields.banco} $stringType,
        ${CuentasFields.credito} $doubleType,
        ${CuentasFields.tipo} $integerType,
        ${CuentasFields.createdAt} $dateType,
        ${CuentasFields.activa} $boolType,
      )
    ''');
  }


  Future<Cuenta> create(Cuenta cuenta) async {
    final db = await instance.database;
    final id = await db.insert(tableCuentas, cuenta.toJson());
    return cuenta.copy(id: id);
  }

  Future<Cuenta?> readCuenta(int id) async {
    final db = await instance.database;
    final maps = await db.query(
      tableCuentas,
      columns: CuentasFields.values,
      where: '${CuentasFields.id} = ?',
      whereArgs: [id],
    );
    if(maps.isNotEmpty){
      return Cuenta.fromJson(maps.first);
    }else{
      return null;
    }
  }

  Future<List<Cuenta>> readAll() async {
    final db = await instance.database;
    final maps = await db.query(
      tableCuentas,
      columns: CuentasFields.values,
    );
    return maps.map((json) => Cuenta.fromJson(json)).toList();
  }
  
  Future<int> update(Cuenta cuenta) async {
    final db = await instance.database;
    return db.update(
      tableCuentas, 
      cuenta.toJson(),
      where: '${CuentasFields.id} = ?',
      whereArgs: [cuenta.id]  
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return db.delete(
      tableCuentas, 
      where: '${CuentasFields.id} = ?',
      whereArgs: [id]  
    );
  }





}
