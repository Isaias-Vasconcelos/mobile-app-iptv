import 'package:flutter/material.dart';
import 'package:iptv_mobile/mocks/genders/genders_mock.dart';

class ChannelsHomeScreen extends StatefulWidget {
  const ChannelsHomeScreen({super.key});

  @override
  State<ChannelsHomeScreen> createState() => _ChannelsHomeScreenState();
}

class _ChannelsHomeScreenState extends State<ChannelsHomeScreen> {
  final mockGendersList = GendersMock().mockGendersList;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Disponivel em breve!'),
    );
  }
}
