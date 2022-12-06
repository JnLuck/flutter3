import 'package:flutter/material.dart';
import 'package:testter/block/enablebutton.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.title});
  final String title;

  @override
  __gameState createState() => __gameState();
}

class __gameState extends State<GameScreen>{
  TextEditingController player1 = TextEditingController();
  TextEditingController player2 = TextEditingController();
  bool buttonenabled = false;
  Game3 newGame3 = new Game3();

  final _formKey = GlobalKey<FormState>();

  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;
  bool b6 = false;
  bool b7 = false;
  bool b8 = false;
  bool b9 = false;


  bool turnplayer = true; // true = primer jugador, false = segundo jugador

  Icon default1 = Icon(
    Icons.fingerprint, // Icons.favorite
    // color: Colors.blueAccent, // Colors.red
    size: 64,
  );

  Icon p1 = Icon(
    Icons.close, // Icons.favorite
    // color: Colors.blueAccent, // Colors.red
    size: 64,
  );

  Icon p2 = Icon(
    Icons.radio_button_unchecked, // Icons.favorite_border
    // color: Colors.grey,
    size: 64,
  );

  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: player1,
                decoration: InputDecoration(labelText: 'Jugador X'),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Player Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: player2,
                decoration: InputDecoration(labelText: 'Jugador O'),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Player Name';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // iniciar juego
                  newGame3.concon(context);
                  setState(() {
                  if (player1.text.isNotEmpty && player2.text.isNotEmpty){
                    newGame3.player1 = player1.text;
                    newGame3.player2 = player2.text;
                    
                      turnplayer = true;
                      b1 = true;
                      b2 = true;
                      b3 = true;
                      b4 = true;
                      b5 = true;
                      b6 = true;
                      b7 = true;
                      b8 = true;
                      b9 = true;
                    
                    newGame3.resetButtons();
                  } else {
                    showDialog(
                  context: context,
                  builder: (ctxt) => new AlertDialog(
                    title: Text("Players"),
                    content: Text("Completa el nombre de los jugadores"),
                  )
              );
                  }
                  });
                  
                  // print(player1.text);
                  // print(newGame3.allbuttons());
                }, 
                child: Text('Iniciar')
              ),
              ElevatedButton(
                onPressed: () {
                  // anular juego
                  setState(() {
                    b1 = false;
                    b2 = false;
                    b3 = false;
                    b4 = false;
                    b5 = false;
                    b6 = false;
                    b7 = false;
                    b8 = false;
                    b9 = false;
                  });
                  newGame3.resetButtons();
                }, 
                child: Text('Anular')
              ),
              Expanded(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    FloatingActionButton(
                      onPressed: b1?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(0, 0, 'b1', 'close');
                          } else {
                            newGame3.addIcon(0, 0, 'b1', 'radio_button_unchecked');
                          }
                          b1 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      // child: const Icon(Icons.close, size: 64),
                      child: b1 ? default1:(newGame3.buttonValue(0, 0, 'b1')=='close' && '' != newGame3.buttonValue(0, 0, 'b1')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b2?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(0, 1, 'b2', 'close');
                          } else {
                            newGame3.addIcon(0, 1, 'b2', 'radio_button_unchecked');
                          }
                          b2 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b2 ? default1:(newGame3.buttonValue(0, 1, 'b2')=='close' && '' != newGame3.buttonValue(0, 1, 'b2')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b3?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(0, 2, 'b3', 'close');
                          } else {
                            newGame3.addIcon(0, 2, 'b3', 'radio_button_unchecked');
                          }
                          b3 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b3 ? default1:(newGame3.buttonValue(0, 2, 'b3')=='close' && '' != newGame3.buttonValue(0, 2, 'b3')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b4?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(1, 0, 'b4', 'close');
                          } else {
                            newGame3.addIcon(1, 0, 'b4', 'radio_button_unchecked');
                          }
                          b4 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b4 ? default1:(newGame3.buttonValue(1, 0, 'b4')=='close' && '' != newGame3.buttonValue(1, 0, 'b4')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b5?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(1, 1, 'b5', 'close');
                          } else {
                            newGame3.addIcon(1, 1, 'b5', 'radio_button_unchecked');
                          }
                          b5 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b5 ? default1:(newGame3.buttonValue(1, 1, 'b5')=='close' && '' != newGame3.buttonValue(1, 1, 'b5')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b6?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(1, 2, 'b6', 'close');
                          } else {
                            newGame3.addIcon(1, 2, 'b6', 'radio_button_unchecked');
                          }
                          b6 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b6 ? default1:(newGame3.buttonValue(1, 2, 'b6')=='close' && '' != newGame3.buttonValue(1, 2, 'b6')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b7?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(2, 0, 'b7', 'close');
                          } else {
                            newGame3.addIcon(2, 0, 'b7', 'radio_button_unchecked');
                          }
                          b7 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b7 ? default1:(newGame3.buttonValue(2, 0, 'b7')=='close' && '' != newGame3.buttonValue(2, 0, 'b7')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b8?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(2, 1, 'b8', 'close');
                          } else {
                            newGame3.addIcon(2, 1, 'b8', 'radio_button_unchecked');
                          }
                          b8 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b8 ? default1:(newGame3.buttonValue(2, 1, 'b8')=='close' && '' != newGame3.buttonValue(2, 1, 'b8')? p1 : p2),
                    ),
                    FloatingActionButton(
                      onPressed: b9?() {
                        setState(() {
                          if (turnplayer){
                            newGame3.addIcon(2, 2, 'b9', 'close');
                          } else {
                            newGame3.addIcon(2, 2, 'b9', 'radio_button_unchecked');
                          }
                          b9 = false;
                          if (turnplayer){
                            turnplayer = false;
                          } else {
                            turnplayer = true;
                          }
                        });
                      }:null,
                      child: b9 ? default1:(newGame3.buttonValue(2, 2, 'b9')=='close' && '' != newGame3.buttonValue(2, 2, 'b9')? p1 : p2),
                    ),
                  ]
                )
              ),
               _createDataTable()
            ],
          ),
        ),
      ),
    );
  }
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }
List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('N° de Partida')),
      DataColumn(label: Text('Ganador')),
      DataColumn(label: Text('Simbolo'))
    ];
  }
List<DataRow> _createRows() {
    return newGame3.partidas
        .map((book) => DataRow(cells: [
              DataCell(Text(book['partido'].toString())),
              DataCell(Text(book['ganador'].toString())),
              DataCell(Text(book['symbol'].toString()))
            ]))
        .toList();
  }


}
