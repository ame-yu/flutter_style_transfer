import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DbHistory {
  var historyStore = StoreRef<int, Map<String, Object?>>.main();
  static Database? db;

  static DbHistory instance = DbHistory();

  static Future<Database?> loadDB() async {
    print("load db");
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    var dbPath = join(dir.path, 'style_transfer.db');
    db = await databaseFactoryIo.openDatabase(dbPath);
    print("load over");
    return db;
  }

  Future<List<Map<String, Object?>?>> getHistoryRecord({limit = 5}) async {
    var records = historyStore.find(db!, finder: Finder(limit: limit));
    var iter = (await records).map((it) =>
        Map<String, Object?>.from(it.value)..putIfAbsent("key", () => it.key));
    return iter.toList();
  }

  clear(int index) async {
    await db!.transaction((txn) async {
      await historyStore.delete(txn,
          finder: Finder(filter: Filter.byKey(index)));
    });
  }

  clearAll() async {
    await db!.transaction((txn) async {
      await historyStore.delete(txn);
    });
  }
}
