import 'package:iptv_mobile/models/episodie_model.dart';

class EpisodieRepository {

  List<Episodie> getAllEpisodies(){
     return [
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
     ];
  }
}