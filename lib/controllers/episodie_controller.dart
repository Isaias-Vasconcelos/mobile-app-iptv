import 'package:flutter/cupertino.dart';
import 'package:iptv_mobile/models/episodie_model.dart';
import 'package:iptv_mobile/repositories/episodie_repository.dart';

class EpisodieController extends ChangeNotifier {

  EpisodieRepository episodieRepository;

  EpisodieController({required this.episodieRepository});

  List<Episodie> _episodies = [];
  bool _isLoading = false;

  List<Episodie> get episodies => _episodies;
  bool get isLoading => _isLoading;

  void loadEpisodies(String? seasonId){

    _isLoading = true;
    notifyListeners();

    _episodies = episodieRepository.getAllEpisodies()
        .where((el) => el.seasonId == seasonId).toList();

    _isLoading = false;
  }
}