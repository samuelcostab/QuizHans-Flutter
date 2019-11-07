import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_hanse/views/home_page.dart';
import 'package:quiz_hanse/widgets/check_box.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FormInit extends StatefulWidget {
  static final String path = "lib/src/pages/quiz_app/home.dart";

  @override
  _FormInitState createState() => _FormInitState();
}

class _FormInitState extends State<FormInit> {
  bool possuiHanse = false;
  String sexoValue = 'Feminino';
  final _nomeController = TextEditingController();

  List _dados = [];

  @override
  void initState() {
    super.initState();
    _readyData().then((data) {
      setState(() {
        _dados = json.decode(data);
      });
    });
  }

  void savePerson() {
    setState(() {
      Map<String, dynamic> newPerson = Map();
      newPerson["nome"] = _nomeController.text;
      newPerson["sexo"] = sexoValue;
      newPerson["possuiHanse"] = possuiHanse;

      _nomeController.text = "";
      _dados.add(newPerson);
      _saveData();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_dados.isNotEmpty) {
      return HomePage();
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'HansesQuiz',
          ),
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsetsDirectional.only(top: 80),
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                color: Colors.white70,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                      child: Text(
                        "Antes de começarmos com o quiz, responda esse pequeno formulário por favor!",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        controller: _nomeController,
                        decoration: InputDecoration(
                            labelText: "Nome", hasFloatingPlaceholder: true),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Sexo",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          DropdownButton<String>(
                            value: sexoValue,
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.grey.shade600),
                            underline: Container(
                              height: 2,
                              color: Colors.transparent,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                sexoValue = newValue;
                              });
                            },
                            items: <String>['Masculino', 'Feminino']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                    PCheckboxListTile(
                      title: "Já Teve Hanseníase?",
                      value: possuiHanse,
                      onChanged: (value) {
                        setState(() {
                          possuiHanse = value;
                        });
                      },
                    ),
                    RaisedButton(
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      onPressed: () {
                        savePerson();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text("Enviar"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/dadosPerson.json');
  }

  Future<File> _saveData() async {
    String data = json.encode(_dados);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readyData() async {
    try {
      final file = await _getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}
