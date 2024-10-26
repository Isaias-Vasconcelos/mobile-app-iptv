import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iptv_mobile/components/player/speed_button_widget.dart';
import 'package:iptv_mobile/components/player/speed_options_widget.dart';
import 'package:iptv_mobile/controllers/player_controller.dart';
import 'package:iptv_mobile/style/app_colors.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  PlayerController playerController = PlayerController.instance;
  late VlcPlayerController _vlcPlayerController;
  late Timer _timer;
  late Timer? _showOptionsTimer;

  Duration _currentPosition = Duration.zero;
  Duration _totalDuration = const Duration(milliseconds: 1);

  bool _isPlaying = true;
  bool _optionsIsVisible = false;
  bool _isLoading = false;

  String contentName = "Homem aranha: De volta ao lar";

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hours = duration.inHours;
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    if (hours > 0) {
      return '$hours:$minutes:$seconds';
    } else {
      return '$minutes:$seconds';
    }
  }

  void _showOptions() {
    _optionsIsVisible = !_optionsIsVisible;

    setState(() {
      if (_optionsIsVisible == false) {
        _showOptionsTimer?.cancel();
        return;
      }

      _showOptionsTimer = Timer(const Duration(seconds: 7), () {
        _showOptionsTimer?.cancel();
        if (_optionsIsVisible) {
          setState(() {
            _optionsIsVisible = false;
          });
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    _vlcPlayerController = VlcPlayerController.network(
        'https://iptv-content-bucket.s3.us-east-1.amazonaws.com/movies/movies-content/Homem+Aranha+de+Volta+ao+Lar.mp4',
        hwAcc: HwAcc.auto,
        options: VlcPlayerOptions(
            advanced: VlcAdvancedOptions([
              VlcAdvancedOptions.networkCaching(3000),
            ]),
            http: VlcHttpOptions([
              VlcHttpOptions.httpReconnect(true),
            ]),
            video: VlcVideoOptions([
              VlcVideoOptions.dropLateFrames(true),
            ])));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final position = await _vlcPlayerController.getPosition();
      final duration = await _vlcPlayerController.getDuration();
      setState(() {
        _currentPosition = position;
        _totalDuration = duration;
      });
    });

    _vlcPlayerController.addListener(() {
      print(playerController.speedPlayBack.value);
    });

    playerController.speedPlayBack.addListener(() {
      setState(() {
        _vlcPlayerController
            .setPlaybackSpeed(playerController.speedPlayBack.value);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _timer.cancel();
    _vlcPlayerController.stopRendererScanning();
    _vlcPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(
                child: GestureDetector(
                    onTap: () {
                      _showOptions();
                    },
                    behavior: HitTestBehavior.opaque,
                    child: IgnorePointer(
                      child: VlcPlayer(
                        controller: _vlcPlayerController,
                        aspectRatio: MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                        placeholder: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ))),
            if (_optionsIsVisible)
              Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      const BackButton(),
                      Expanded(
                        child: Text(
                          contentName,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      const SizedBox(
                        width: 55,
                      )
                    ],
                  )),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            if (_optionsIsVisible && _isLoading == false)
              Center(
                child: IconButton(
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 70,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPlaying = !_isPlaying;
                      if (_isPlaying == true) {
                        _vlcPlayerController.play();
                      } else {
                        _vlcPlayerController.pause();
                      }
                    });
                  },
                ),
              ),
            if (_optionsIsVisible)
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 80,
                          height: 20,
                          child: Slider(
                              activeColor: AppColors().mainPurple,
                              thumbColor: Colors.white,
                              value: _currentPosition.inMilliseconds.toDouble(),
                              min: 0,
                              max: _totalDuration.inMilliseconds.toDouble(),
                              onChanged: (value) {
                                setState(() {
                                  _currentPosition =
                                      Duration(milliseconds: value.toInt());
                                });
                                _vlcPlayerController.seekTo(_currentPosition);
                              }),
                        ),
                        Text(
                          formatDuration(_totalDuration - _currentPosition),
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SpeedButtonWidget(onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.black,
                              context: context,
                              builder: (BuildContext context) {
                                return const SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: SpeedOptionsWidget());
                              });
                        })
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
