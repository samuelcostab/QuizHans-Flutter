/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';

class PCheckboxListTile extends StatelessWidget {
  final bool value;
  final String title;
  final Function onChanged;
  final Color selectedColor;
  final Color color;

  const PCheckboxListTile({Key key, @required this.value, @required this.title, @required this.onChanged, this.selectedColor, this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onChanged(!value),
      title: Text(title, style: TextStyle(color: Colors.grey.shade600),),
      trailing: CircleAvatar(
        backgroundColor: value ? selectedColor != null ? selectedColor : Colors.deepPurple : color != null ? color : Colors.deepPurple,
        radius: 14.0,
        child: CircleAvatar(
          radius: 12.0,
          backgroundColor: value ? (selectedColor != null) ? selectedColor : Colors.deepPurple : Colors.white,
          child: value ? Icon(Icons.check, size: 14.0,):Container(width: 0,),
        ),
      ),
    );
  }
}