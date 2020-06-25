class Question {
  Question(this._dificulty, this._category, this._subcategory, this._title,this._score);
  final String _dificulty;
  final String _category;
  final String _subcategory;
  final String _title;
  final String _score;
  String get score => _score;

  String get dificulty => _dificulty;

  String get category => _category;

  String get subcategory => _subcategory;

  String get title => _title;

  
}
