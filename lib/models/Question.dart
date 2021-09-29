import 'dart:developer';

import 'package:homepage/Utils/api_service.dart';
import 'package:homepage/Utils/jsonConstants.dart';

class Question {
  Question(
      this.id,
      this._difficulty,
      this._category,
      this._subcategory,
      this._title,
      this._score,
      this._outputUrl,
      this._inputUrl,
      this._questionText,
      this._imageUrl
      );
  final int id;
  final String _difficulty;
  final String _category;
  final String _subcategory;
  final String _inputUrl;
  final String _questionText;
  final String _outputUrl;
  final String _title;
  final int _score;
  final String _imageUrl;

  String get imageUrl => _imageUrl;

  int get score => _score;

  String get inputUrl => _inputUrl;

  String get difficulty => _difficulty;

  String get category => _category;

  String get subcategory => _subcategory;

  String get title => _title;

  String get outputUrl => _outputUrl;

  String get questionText => _questionText;

  factory Question.fromJson(final Map<String,dynamic> json) {
    return Question(
        json[JSONConstants.id],
        json[JSONConstants.difficultyKey],
        json[JSONConstants.categoryKey],
        json[JSONConstants.subCategoryKey],
        json[JSONConstants.titleKey],
        json[JSONConstants.scoreKey],
        json[JSONConstants.outputURLKey],
        json[JSONConstants.inputURLKey],
        json[JSONConstants.questionTextURLKey],
        json[JSONConstants.imageURLKey]);
  }
}
