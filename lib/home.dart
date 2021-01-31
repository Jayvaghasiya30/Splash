import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'network.dart';
import 'ListUI.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override

  Getuser getuser = Getuser();
  final color = const Color(0xFF65E0DB);
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: Text('Hello Players'),
            backgroundColor: color,
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  child: FutureBuilder(
                    future: getuser.getusers(),
                    builder: (BuildContext context,AsyncSnapshot snapshot){

                      if(snapshot.data == null){
                        return Container(
                          child: Center(
                            child: Text("Loading..."),
                          ),
                        );
                      }
                      else{
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context,int index){
                            return listbox(snapshot.data[index].name);
                          },
                        );
                      }
                    },
                  ),
                ),
              )
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}


