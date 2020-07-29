import 'package:flutter/material.dart';

class ColumnButton extends StatelessWidget {
  final Color _color;
  final IconData _icon;
  final String _label;

  ColumnButton(
    this._color,
    this._icon,
    this._label
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(_icon, color: _color,),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            _label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: _color
            ),
          ),
          )
      ],
    );
  }
}