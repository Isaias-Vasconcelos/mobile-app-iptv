import 'package:iptv_mobile/models/series_model.dart';

import '../models/gender_model.dart';
import '../models/platform_model.dart';
import '../models/season_model.dart';

class SeriesRepository {
  final List<Series> _series = [
    Series(
      id: '7',
      title: 'Westworld',
      photoUrl:
          'https://i.scdn.co/image/ab67616d0000b273d27250d1d8b0dd8bce8ab207',
      description:
          'Um parque temático futurista permite que os visitantes experimentem o Velho Oeste com androides.',
      platformId: '107',
      platform: Platform(
        id: '107',
        name: 'HBO Max',
        photoUrl: 'https://exemplo.com/hbo_max.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ficção Científica')],
      seasons: [
        Season(
          id: '1',
          seriesId: '7',
          number: 1,
        ),
        Season(
          id: '2',
          seriesId: '7',
          number: 2,
        ),
      ],
    ),
    Series(
      id: '8',
      title: 'The Witcher',
      photoUrl:
          'https://br.web.img3.acsta.net/pictures/19/11/29/17/57/5161763.jpg',
      description:
          'Geralt de Rívia, um caçador de monstros mutante, luta para encontrar seu lugar em um mundo onde as pessoas frequentemente se mostram mais perversas que as bestas.',
      platformId: '108',
      platform: Platform(
        id: '108',
        name: 'Netflix',
        photoUrl: 'https://exemplo.com/netflix.jpg',
      ),
      genders: [Gender(id: '5', name: 'Fantasia')],
      seasons: [
        Season(
          id: '1',
          seriesId: '8',
          number: 1,
        ),
        Season(
          id: '2',
          seriesId: '8',
          number: 2,
        ),
      ],
    ),
    Series(
      id: '9',
      title: 'The Crown',
      photoUrl:
          'https://upload.wikimedia.org/wikipedia/pt/thumb/e/e2/The-Crown-Poster-S2.jpg/220px-The-Crown-Poster-S2.jpg',
      description:
          'Uma dramatização biográfica sobre o reinado da Rainha Elizabeth II.',
      platformId: '109',
      platform: Platform(
        id: '109',
        name: 'Netflix',
        photoUrl: 'https://exemplo.com/netflix.jpg',
      ),
      genders: [Gender(id: '6', name: 'Histórico')],
      seasons: [
        Season(
          id: '1',
          seriesId: '9',
          number: 1,
        ),
        Season(
          id: '2',
          seriesId: '9',
          number: 2,
        ),
      ],
    ),
    Series(
      id: '10',
      title: 'Chernobyl',
      photoUrl:
          'https://br.web.img3.acsta.net/pictures/19/04/29/08/21/1692162.jpg?coixp=45&coiyp=73',
      description:
          'Uma minissérie sobre o desastre nuclear de Chernobyl e as tentativas subsequentes de mitigação dos danos.',
      platformId: '110',
      platform: Platform(
        id: '110',
        name: 'HBO Max',
        photoUrl: 'https://exemplo.com/hbo_max.jpg',
      ),
      genders: [Gender(id: '6', name: 'Histórico')],
      seasons: [
        Season(
          id: '1',
          seriesId: '10',
          number: 1,
        ),
      ],
    ),
  ];

  List<Series> getAllSeries() {
    return _series;
  }

  List<Series> getAllSeriesSearch(String term) {
    return _series
        .where(
            (serie) => serie.title.toLowerCase().contains(term.toLowerCase()))
        .toList();
  }

  List<Series> getSeriesByGender(Gender gender){
    return _series;
  }

  List<Series> getSeriesByGenderSearch(Gender gender, String term){
    return _series
        .where((series) => series.title.toLowerCase().contains(term.toLowerCase()))
        .toList();
  }
}
