import 'package:flutter/material.dart';
import 'views/component.dart';
import 'presenter/presenter.dart';
void main(){
  runApp(
      new MaterialApp(
        title: 'MVP Project',
        // home: new HomePage(new BasicPresenter()),
      )
  );
}