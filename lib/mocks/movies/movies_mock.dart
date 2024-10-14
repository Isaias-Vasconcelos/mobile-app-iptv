import 'package:iptv_mobile/models/gender_model.dart';
import 'package:iptv_mobile/models/movies_model.dart';
import 'package:iptv_mobile/models/platform_model.dart';

class MoviesMock {
  List<Movies> mockMoviesList = [
    Movies(
      id: '1',
      title: 'Missão Impossível: Protocolo Fantasma',
      photoUrl: 'https://exemplo.com/foto1.jpg',
      movieUrl: 'https://exemplo.com/filme1.mp4',
      year: 2011,
      description:
          'Ethan Hunt e sua equipe enfrentam uma missão perigosa para impedir uma catástrofe global.',
      platformId: '101',
      platform: Platform(
        id: '101',
        name: 'Netflix',
        photoUrl: 'https://exemplo.com/netflix.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '2',
      title: 'Velozes e Furiosos 7',
      photoUrl: 'https://exemplo.com/foto2.jpg',
      movieUrl: 'https://exemplo.com/filme2.mp4',
      year: 2015,
      description:
          'Dom e sua equipe enfrentam novos desafios enquanto são caçados por um assassino implacável.',
      platformId: '102',
      platform: Platform(
        id: '102',
        name: 'Prime Video',
        photoUrl: 'https://exemplo.com/prime_video.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '3',
      title: 'Os Mercenários 3',
      photoUrl: 'https://exemplo.com/foto3.jpg',
      movieUrl: 'https://exemplo.com/filme3.mp4',
      year: 2014,
      description:
          'Um grupo de mercenários veteranos enfrenta uma nova ameaça que desafia seus limites.',
      platformId: '103',
      platform: Platform(
        id: '103',
        name: 'Disney+',
        photoUrl: 'https://exemplo.com/disney_plus.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '4',
      title: 'John Wick: De Volta ao Jogo',
      photoUrl: 'https://exemplo.com/foto4.jpg',
      movieUrl: 'https://exemplo.com/filme4.mp4',
      year: 2014,
      description:
          'Após a morte de sua esposa, um ex-assassino busca vingança contra aqueles que roubaram sua última lembrança dela.',
      platformId: '104',
      platform: Platform(
        id: '104',
        name: 'HBO Max',
        photoUrl: 'https://exemplo.com/hbo_max.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '5',
      title: 'Mad Max: Estrada da Fúria',
      photoUrl: 'https://exemplo.com/foto5.jpg',
      movieUrl: 'https://exemplo.com/filme5.mp4',
      year: 2015,
      description:
          'Em um futuro pós-apocalíptico, Max ajuda um grupo de mulheres a escapar de um tirano.',
      platformId: '105',
      platform: Platform(
        id: '105',
        name: 'Globoplay',
        photoUrl: 'https://exemplo.com/globoplay.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '6',
      title: 'Resgate',
      photoUrl: 'https://exemplo.com/foto6.jpg',
      movieUrl: 'https://exemplo.com/filme6.mp4',
      year: 2020,
      description:
          'Um mercenário é contratado para resgatar o filho sequestrado de um senhor do crime internacional.',
      platformId: '101',
      platform: Platform(
        id: '101',
        name: 'Netflix',
        photoUrl: 'https://exemplo.com/netflix.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '7',
      title: 'O Protetor',
      photoUrl: 'https://exemplo.com/foto7.jpg',
      movieUrl: 'https://exemplo.com/filme7.mp4',
      year: 2014,
      description:
          'Um ex-agente do governo vive uma vida tranquila até que decide ajudar uma jovem em apuros.',
      platformId: '106',
      platform: Platform(
        id: '106',
        name: 'Star+',
        photoUrl: 'https://exemplo.com/star_plus.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '8',
      title: 'Homem-Aranha: De Volta ao Lar',
      photoUrl: 'https://exemplo.com/foto8.jpg',
      movieUrl: 'https://exemplo.com/filme8.mp4',
      year: 2017,
      description:
          'Peter Parker tenta equilibrar sua vida escolar com suas atividades como o super-herói Homem-Aranha.',
      platformId: '107',
      platform: Platform(
        id: '107',
        name: 'Disney+',
        photoUrl: 'https://exemplo.com/disney_plus.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '9',
      title: 'Pantera Negra',
      photoUrl: 'https://exemplo.com/foto9.jpg',
      movieUrl: 'https://exemplo.com/filme9.mp4',
      year: 2018,
      description:
          'O rei T’Challa precisa defender sua nação, Wakanda, de inimigos internos e externos.',
      platformId: '107',
      platform: Platform(
        id: '107',
        name: 'Disney+',
        photoUrl: 'https://exemplo.com/disney_plus.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
    Movies(
      id: '10',
      title: 'Gladiador',
      photoUrl: 'https://exemplo.com/foto10.jpg',
      movieUrl: 'https://exemplo.com/filme10.mp4',
      year: 2000,
      description:
          'Um general romano traído busca vingança e enfrenta seus inimigos na arena como gladiador.',
      platformId: '102',
      platform: Platform(
        id: '102',
        name: 'Prime Video',
        photoUrl: 'https://exemplo.com/prime_video.jpg',
      ),
      genders: [Gender(id: '1', name: 'Ação')],
    ),
  ];
}
