import 'package:ilm_maskanlari/category/Datata.dart';

class CategoriesModel {
  List<Datata> data;
  int error_code;
  String message;
  bool success;

  CategoriesModel({required this.data, required this.error_code, required this.message, required this.success});
}