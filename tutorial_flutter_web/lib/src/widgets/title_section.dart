import 'package:flutter/material.dart';
import 'package:tutorial_flutter_web/src/widgets/favorite_widget.dart';

class TitleSection extends StatelessWidget {
  final String _titleText;
  final String _subTitleText;
  // final Icon _icon;
  // final String _iconText;
  final FavoriteWidget _favWidget;
  TitleSection(
     this._titleText, 
     this._subTitleText, 
     this._favWidget
    //  this._icon, 
    //  this._iconText
     );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '$_titleText',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '$_subTitleText',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // _icon,
          // Text('$_iconText')
          _favWidget
        ],
      ),
    );
  }
}
