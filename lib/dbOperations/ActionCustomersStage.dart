import 'dart:collection';

import 'package:justwin/models/CustomerStageModel.dart';
import 'package:justwin/services/DatabaseService.dart';

class ActionCustomerStage {
  static final ActionCustomerStage instance =
      ActionCustomerStage._privateConstructor();

  ActionCustomerStage._privateConstructor();

  factory ActionCustomerStage() {
    return instance;
  }

  convertListToJson(List<List<dynamic>> csvList) {
    final orgData = csvList;
    List<Map<String, String>> data = [];
    orgData.removeAt(0);
    for (var row in csvList) {
      final m = LinkedHashMap<String, String>();
      for (var fieldName in FieldsCustomersStage.values) {
        try {
          final fieldValue = FieldsCustomersStage.values.indexOf(fieldName);
          m[fieldName] = row[fieldValue];
        } catch (e) {
          m[fieldName] = "";
        }
      }
      data.add(m);
    }
    print('Total rows:${data.length}');
    deleteAll()
        .whenComplete(() => insertAll(data).whenComplete(() => readRecords()));
  }

  Future deleteAll() async {
    final db = await DatabaseService.instance.database;
    await db.delete(tblCustomerStage);
  }

  Future insertAll(List<dynamic> data) async {
    final db = await DatabaseService.instance.database;
    print('Data length: ${data.length}');
    for (var i = 0; i <= data.length - 1; i++) {
      await db.insert(tblCustomerStage, data[i]);
    }
  }

  Future readRecords() async {
    final db = await DatabaseService.instance.database;
    final results = await db.rawQuery(
        'SELECT sum(productAmount) from $tblCustomerStage where productAmount <> 0');
    print('RESULT: ${results}');
    // TODO: db.close();
  }
}
