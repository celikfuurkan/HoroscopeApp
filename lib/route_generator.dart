import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscopeapp/burc_detay.dart';
import 'package:horoscopeapp/burc_listesi.dart';
import 'package:horoscopeapp/model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcListesi());

      case '/burcDetay':
        final secilen = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: secilen));
    }
  }
}
