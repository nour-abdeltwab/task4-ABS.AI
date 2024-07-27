//TODO: add your view model class here
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '../Model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  SchoolModel? _school;

  SchoolModel? get school => _school;

  Future<void> loadSchoolData() async {
    final String response =
        await rootBundle.loadString("lib/JSONdata/SchoolData.json");
    final data = await json.decode(response);
    _school = SchoolModel.fromJson(data);
    notifyListeners();
  }
}
