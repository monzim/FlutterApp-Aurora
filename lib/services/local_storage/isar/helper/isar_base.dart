import 'package:isar/isar.dart';

abstract class IsarBase<T> {
  Future<Isar> getIsarInstance();
  Future<T> getData();
  Future<T> saveData(T data);
}
