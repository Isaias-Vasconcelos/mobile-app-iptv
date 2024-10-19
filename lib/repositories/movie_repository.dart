import 'package:iptv_mobile/models/movies_model.dart';

import '../models/gender_model.dart';
import '../models/platform_model.dart';

class MovieRepository {
  List<Movies> getAllMovies() {
    List<Movies> movies = [
      Movies(
        id: '1',
        title: 'Missão Impossível: Protocolo Fantasma',
        photoUrl:
            'https://a-static.mlcdn.com.br/%7Bw%7Dx%7Bh%7D/missao-impossivel-protocolo-fantasma-dvd-original-lacrado-paramont/klaivideo/4061p/666629fc14c58f087b82548acf0edfbb.jpeg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '2',
        title: 'Velozes e Furiosos 7',
        photoUrl:
            'https://br.web.img3.acsta.net/pictures/15/03/30/21/19/054397.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '3',
        title: 'Os Mercenários 3',
        photoUrl:
            'https://br.web.img3.acsta.net/pictures/14/07/10/20/37/421670.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '4',
        title: 'John Wick: De Volta ao Jogo',
        photoUrl:
            'https://static.wikia.nocookie.net/dublagem/images/e/e1/DeVoltaAoJogo.jpg/revision/latest?cb=20231031161122&path-prefix=pt-br',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '5',
        title: 'Mad Max: Estrada da Fúria',
        photoUrl:
            'https://m.media-amazon.com/images/M/MV5BZDRkODJhOTgtOTc1OC00NTgzLTk4NjItNDgxZDY4YjlmNDY2XkEyXkFqcGc@._V1_.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '6',
        title: 'Resgate',
        photoUrl:
            'https://br.web.img3.acsta.net/pictures/20/03/30/17/23/0866109.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '7',
        title: 'O Protetor',
        photoUrl:
            'https://static.wikia.nocookie.net/dublagem/images/f/f5/O_Protetor.jpg/revision/latest?cb=20231018133901&path-prefix=pt-br',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '8',
        title: 'Homem-Aranha: De Volta ao Lar',
        photoUrl:
            'https://br.web.img3.acsta.net/pictures/17/05/29/23/31/530814.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '9',
        title: 'Pantera Negra',
        photoUrl:
            'https://lumiere-a.akamaihd.net/v1/images/unnamed_13_75a3ebb1.jpeg?region=0%2C0%2C356%2C512',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
      Movies(
        id: '10',
        title: 'Gladiador',
        photoUrl:
            'https://upload.wikimedia.org/wikipedia/pt/thumb/4/44/GladiadorPoster.jpg/230px-GladiadorPoster.jpg',
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
        genders: [
          Gender(id: '1', name: 'Ação'),
        ],
      ),
    ];

    return movies;
  }
}
