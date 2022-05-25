import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/views/clients/clients_view.dart';
import 'package:flutter_web_dashboard/views/drivers/drivers_view.dart';
import 'package:flutter_web_dashboard/views/overview/overview_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name){
    case overViewPageRoute:
      return _getPageRoute(const OverviewView());
    case driversPageRoute:
      return _getPageRoute(const DriverView());
    case clientsPageRoute:
      return _getPageRoute(const ClientsView());
    default:
      return _getPageRoute(const OverviewView());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (_) => child);
}