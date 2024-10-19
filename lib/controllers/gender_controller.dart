import 'package:flutter/cupertino.dart';
import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/repositories/gender_repository.dart';

class GenderController extends ChangeNotifier {

  GenderRepository genderRepository;

  GenderController({required this.genderRepository});

  List<Gender> _genders = [];
  bool _isLoading = false;

  List<Gender> get genders => _genders;
  bool get isLoading => _isLoading;

  getAllGenders(){
    _isLoading = true;
    notifyListeners();

    _genders = genderRepository.get();
    _isLoading = false;
    notifyListeners();
  }
}