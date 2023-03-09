import '/services/app_preference/models/app_preference.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

@riverpod
class IsarService extends _$IsarService {
  @override
  Future<Isar?> build() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [AppPreferencesSchema],
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> closeIsar() async {
    final isar = state.value;
    await isar?.close();
  }

  Future<void> cleanIsarDB() async {
    final isar = state.value;
    await isar?.writeTxn(() => isar.clear());
  }
}
