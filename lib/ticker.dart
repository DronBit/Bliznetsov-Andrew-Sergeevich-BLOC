import 'package:flutter/material.dart';
import 'package:untitled/app.dart';
import 'package:bloc/bloc.dart';

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
