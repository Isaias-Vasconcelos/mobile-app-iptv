import 'package:iptv_mobile/models/episodie_model.dart';
import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/models/platform_model.dart';
import 'package:iptv_mobile/models/season_model.dart';
import 'package:iptv_mobile/models/series_model.dart';

class SeriesMock {
  List<Series> mockSeriesList = [
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
          episodies: [
            Episodie(
              id: '25',
              seasonId: '1',
              title: 'Capítulo Um: O Labirinto',
              description:
                  'Os anfitriões do parque começam a exibir comportamentos inesperados.',
              episodieUrl: 'https://exemplo.com/westworld/s1e1',
            ),
            Episodie(
              id: '26',
              seasonId: '1',
              title: 'Capítulo Dois: O Contrato',
              description:
                  'O enredo começa a se desenvolver enquanto os visitantes exploram o parque.',
              episodieUrl: 'https://exemplo.com/westworld/s1e2',
            ),
          ],
        ),
        Season(
          id: '2',
          seriesId: '7',
          number: 2,
          episodies: [
            Episodie(
              id: '27',
              seasonId: '2',
              title: 'Capítulo Um: Jornada Para a Consciência',
              description: 'A nova temporada começa com mais mistérios.',
              episodieUrl: 'https://exemplo.com/westworld/s2e1',
            ),
            Episodie(
              id: '28',
              seasonId: '2',
              title: 'Capítulo Dois: Dividindo as Águas',
              description:
                  'Conflitos aumentam enquanto os personagens lutam pelo controle.',
              episodieUrl: 'https://exemplo.com/westworld/s2e2',
            ),
          ],
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
          episodies: [
            Episodie(
              id: '29',
              seasonId: '1',
              title: 'Capítulo Um: O Começo do Fim',
              description:
                  'Geralt enfrenta seu primeiro monstro enquanto busca respostas.',
              episodieUrl: 'https://exemplo.com/witcher/s1e1',
            ),
            Episodie(
              id: '30',
              seasonId: '1',
              title: 'Capítulo Dois: Quatro Marcas',
              description:
                  'Geralt é forçado a fazer escolhas difíceis em um novo reino.',
              episodieUrl: 'https://exemplo.com/witcher/s1e2',
            ),
          ],
        ),
        Season(
          id: '2',
          seriesId: '8',
          number: 2,
          episodies: [
            Episodie(
              id: '31',
              seasonId: '2',
              title: 'Capítulo Um: Um Grão de Verdade',
              description:
                  'Geralt encontra um velho amigo com um segredo sombrio.',
              episodieUrl: 'https://exemplo.com/witcher/s2e1',
            ),
            Episodie(
              id: '32',
              seasonId: '2',
              title: 'Capítulo Dois: Kaer Morhen',
              description:
                  'Geralt retorna à sua casa de infância para treinar Ciri.',
              episodieUrl: 'https://exemplo.com/witcher/s2e2',
            ),
          ],
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
          episodies: [
            Episodie(
              id: '33',
              seasonId: '1',
              title: 'Capítulo Um: Wolferton Splash',
              description:
                  'A rainha Elizabeth enfrenta suas primeiras decisões como monarca.',
              episodieUrl: 'https://exemplo.com/crown/s1e1',
            ),
            Episodie(
              id: '34',
              seasonId: '1',
              title: 'Capítulo Dois: Hyde Park Corner',
              description:
                  'A jovem rainha lida com crises políticas e pessoais.',
              episodieUrl: 'https://exemplo.com/crown/s1e2',
            ),
          ],
        ),
        Season(
          id: '2',
          seriesId: '9',
          number: 2,
          episodies: [
            Episodie(
              id: '35',
              seasonId: '2',
              title: 'Capítulo Um: O Golpe',
              description:
                  'A crise do canal de Suez abala o governo britânico.',
              episodieUrl: 'https://exemplo.com/crown/s2e1',
            ),
            Episodie(
              id: '36',
              seasonId: '2',
              title: 'Capítulo Dois: Marionetes Reais',
              description:
                  'Elizabeth enfrenta decisões difíceis sobre a política externa.',
              episodieUrl: 'https://exemplo.com/crown/s2e2',
            ),
          ],
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
          episodies: [
            Episodie(
              id: '37',
              seasonId: '1',
              title: 'Capítulo Um: 1:23:45',
              description:
                  'O desastre nuclear começa e as consequências são devastadoras.',
              episodieUrl: 'https://exemplo.com/chernobyl/s1e1',
            ),
            Episodie(
              id: '38',
              seasonId: '1',
              title: 'Capítulo Dois: Please Remain Calm',
              description:
                  'Os cientistas e autoridades tentam conter o desastre.',
              episodieUrl: 'https://exemplo.com/chernobyl/s1e2',
            ),
          ],
        ),
      ],
    ),
  ];
}
