import 'package:flutter/cupertino.dart';
import 'package:uiclone1/screens/settings/models/dark_mode_config_model.dart';
import 'package:uiclone1/screens/settings/repo/dark_mode_config_repo.dart';

class DarkModeConfigViewModel extends ChangeNotifier {
  final DarkModeConfigRepository _repository;

  late final DarkModeConfigModel _model = DarkModeConfigModel(
    darkMode: _repository.isDarkMode(),
  );

  DarkModeConfigViewModel(this._repository);

  bool get darkMode => _model.darkMode;

  void setDarkMode(bool value) {
    _repository.setDarkMode(value);
    _model.darkMode = value;
    notifyListeners();
  }
}
