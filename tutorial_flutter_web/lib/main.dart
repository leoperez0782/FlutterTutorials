import 'package:flutter/material.dart';
import 'package:tutorial_flutter_web/src/widgets/column_button.dart';
import 'package:tutorial_flutter_web/src/widgets/favorite_widget.dart';
import 'package:tutorial_flutter_web/src/widgets/title_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buttonSection = _createButtonSection(context);
    Widget textSection = _createTextSection();
    Widget titleSection = _createTitleSection();
    Widget imageSection = _createImageSection();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: <Widget>[
            titleSection,
            imageSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  Widget _createButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ColumnButton(color, Icons.call, 'CALL'),
        ColumnButton(color, Icons.near_me, 'ROUTE'),
        ColumnButton(color, Icons.share, 'SHARE')
      ],
    );
  }

  Widget _createTextSection() {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }

  Widget _createTitleSection() {
    return TitleSection(
        'Hoteles en Morro',
        'Pousada Ilha da Saudade',
        // Icon(
        //   Icons.star,
        //   color: Colors.amberAccent,
        // ),
        // '52');
        FavoriteWidget()
    );
  }

  Widget _createImageSection() {
    return Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/foto.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              )
    );
  }
}
