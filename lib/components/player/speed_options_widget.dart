import 'package:flutter/material.dart';
import 'package:iptv_mobile/controllers/player_controller.dart';
import 'package:iptv_mobile/style/player/speed_options__text_style.dart';

class SpeedOptionsWidget extends StatefulWidget {
  const SpeedOptionsWidget({super.key});

  @override
  State<SpeedOptionsWidget> createState() => _SpeedOptionsWidgetState();
}

class _SpeedOptionsWidgetState extends State<SpeedOptionsWidget> {
  PlayerController playerController = PlayerController.instance;
  List<double> speedOptions = [0.5, 0.75, 1.0, 1.5, 2.0];

  final Color _radioFillColor = Colors.white;

  void _setSpeed(speed) {
    double speedValue = double.parse(speed.toString());
    setState(() {
      playerController.speedPlayBack.value = speedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "0,5x",
                style: SpeedOptionsTextStyle().style,
              ),
              leading: Radio(
                  fillColor: WidgetStatePropertyAll(_radioFillColor),
                  value: speedOptions[0],
                  groupValue: playerController.speedPlayBack.value,
                  onChanged: (value) {
                    _setSpeed(value);
                  }),
            ),
            ListTile(
              title: Text(
                "0,75x",
                style: SpeedOptionsTextStyle().style,
              ),
              leading: Radio(
                  fillColor: WidgetStatePropertyAll(_radioFillColor),
                  value: speedOptions[1],
                  groupValue: playerController.speedPlayBack.value,
                  onChanged: (value) {
                    _setSpeed(value);
                  }),
            ),
            ListTile(
              title: Text(
                "1x(Normal)",
                style: SpeedOptionsTextStyle().style,
              ),
              leading: Radio(
                  fillColor: WidgetStatePropertyAll(_radioFillColor),
                  value: speedOptions[2],
                  groupValue: playerController.speedPlayBack.value,
                  onChanged: (value) {
                    _setSpeed(value);
                  }),
            ),
            ListTile(
              title: Text(
                "1,5x",
                style: SpeedOptionsTextStyle().style,
              ),
              leading: Radio(
                  fillColor: WidgetStatePropertyAll(_radioFillColor),
                  value: speedOptions[3],
                  groupValue: playerController.speedPlayBack.value,
                  onChanged: (value) {
                    _setSpeed(value);
                  }),
            ),
            ListTile(
              title: Text(
                "2x",
                style: SpeedOptionsTextStyle().style,
              ),
              leading: Radio(
                  fillColor: WidgetStatePropertyAll(_radioFillColor),
                  value: speedOptions[4],
                  groupValue: playerController.speedPlayBack.value,
                  onChanged: (value) {
                    _setSpeed(value);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
