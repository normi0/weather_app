import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/logic/models/weather_model.dart';
import 'package:weather_app/logic/services/call_to_api.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Future<WeatherModel> getData(bool isCurrentCity, String cityName) async {
    return await CallToApi().callWeatherApi(isCurrentCity, cityName);
  }

  TextEditingController textController = TextEditingController(text: "");
  Future<WeatherModel>? _myData;
  @override
  void initstate() {
    setState(() {
      _myData = getData(true, "");
    });
    super.initState();
  }
}
