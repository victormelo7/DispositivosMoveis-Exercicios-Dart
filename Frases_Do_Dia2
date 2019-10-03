import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeFull(),
    )
  );
}

class HomeFull extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("Instagram"),
              backgroundColor: Colors.purple,
            ),
            body: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.amber)
              ),
              child: Text("Conteudo Principal"),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text("Fotos"),
                    Text("Publicar"),
                    Text("Perfil"),
                  ],
                ),
              ),
            )
        );
  }
}


