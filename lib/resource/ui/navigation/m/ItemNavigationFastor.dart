import 'package:flutter/material.dart';

class ItemNavigationFastor {

  int position;
  String title;
  Widget goToPage;
  IconData iconData;

  ItemNavigationFastor({
    required int this.position,
    required String this.title,
    required Widget this.goToPage,
    required IconData this.iconData});


}