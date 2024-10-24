import 'package:flutter/cupertino.dart';
import 'package:iptv_mobile/models/series_model.dart';
import 'package:iptv_mobile/repositories/series_repository.dart';

class SeriesController extends ChangeNotifier {
  SeriesRepository seriesRepository;

  SeriesController({required this.seriesRepository});

  bool _isLoading = false;
  List<Series> _series = [];

  bool get isLoading => _isLoading;

  List<Series> get series => _series;

  void loadSeries() {
    _isLoading = true;
    notifyListeners();

    _series = seriesRepository.getAllSeries();
    _isLoading = false;
    notifyListeners();
  }
}
