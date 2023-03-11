import 'package:isar/isar.dart' show Isar;

abstract class IsarBase<T> {
  Future<Isar> getIsarInstance();
  Future<T> getData();
  Future<T> saveData(T data);
}
