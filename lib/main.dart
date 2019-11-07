import 'package:flutter/material.dart';
import 'package:quiz_hanse/views/form.dart';

void main() {
  runApp(MaterialApp(
    home: FormInit(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    title: "Quiz",
  ));
}