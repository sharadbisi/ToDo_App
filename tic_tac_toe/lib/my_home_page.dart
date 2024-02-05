import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool oTurn = true;
  List<String> displayOX = ['', '', '', '', '', '', '', '', ''];
  int oScore = 0;
  int xScore = 0;
  int filledBoxes = 0;
  String resultDeclaration = '';
  bool isWin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tic Tac Toe',
          style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xffcc3300),
      ),
      backgroundColor: const Color(0xff663333),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Color.fromARGB(255, 136, 138, 138),
        //       Color.fromARGB(255, 0, 0, 0)
        //     ],
        //   ),
        //   backgroundBlendMode: BlendMode.clear, ///THIS IS ADDED LATTER
        // ),

        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  _tapped(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 5, color: Colors.white10),
                    color: const Color(0xffffcc99),
                  ),
                  child: Center(
                    child: Text(
                      displayOX[index],
                      style: const TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultDeclaration,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 97, 40),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              backgroundColor: Color(0xFFFFD700),
              height: 2.3,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            onPressed: () {
              _clearBord();
            },
            child: const Text(
              'Play Again',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (oTurn && displayOX[index] == '') {
        displayOX[index] = 'O';
        filledBoxes++;
        print('O turn');
      } else if (!oTurn && displayOX[index] == '') {
        displayOX[index] = 'X';
        filledBoxes++;
        print('X turn');
      }
      oTurn = !oTurn;
      _checkWinner();
    });
  }

  //function for winner
    win(String displayOX){
    resultDeclaration = 'Player $displayOX Winssss';
    isWin = true;
  }

  void _checkWinner() {

    //for checking winner
    if (isWin) {
      return;
    }

    //check 1st Row
    if (displayOX[0] == displayOX[1] &&
        displayOX[0] == displayOX[2] &&
        displayOX[0] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[0]);
        resultDeclaration = 'Player ${displayOX[0]} Wins!';
        // isWin = true;
      });
    }
    //check 2nd Row
    else if (displayOX[3] == displayOX[4] &&
        displayOX[3] == displayOX[5] &&
        displayOX[3] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[3]);
        resultDeclaration = 'Player ${displayOX[3]} Wins!';
        // isWin = true;
      });
    }
    //check 3nd Row
    else if (displayOX[6] == displayOX[7] &&
        displayOX[6] == displayOX[8] &&
        displayOX[6] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[6]);
        resultDeclaration = 'Player ${displayOX[6]} Wins!';
        // isWin = true;
      });
    }
    //check 1st column
    else if (displayOX[0] == displayOX[3] &&
        displayOX[0] == displayOX[6] &&
        displayOX[0] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[0]);
        resultDeclaration = 'Player ${displayOX[0]} Wins!';
        // isWin = true;
      });
    }
    //check 2nd column
    else if (displayOX[1] == displayOX[4] &&
        displayOX[1] == displayOX[7] &&
        displayOX[1] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[1]);
        resultDeclaration = 'Player ${displayOX[1]} Wins!';
        // isWin = true;
      });
    }
    //check 3nd column
    else if (displayOX[2] == displayOX[5] &&
        displayOX[2] == displayOX[8] &&
        displayOX[2] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[2]);
        resultDeclaration = 'Player ${displayOX[2]} Wins!';
        // isWin = true;
      });
    }
    //check 1st diagonal
    else if (displayOX[0] == displayOX[4] &&
        displayOX[0] == displayOX[8] &&
        displayOX[0] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[0]);
        resultDeclaration = 'Player ${displayOX[0]} Wins!';
        // isWin = true;
      });
    }
    //check 2nd diagonal
    else if (displayOX[2] == displayOX[4] &&
        displayOX[2] == displayOX[6] &&
        displayOX[2] != '') {
      setState(() {
        // resultDeclaration = win(displayOX[2]);
        resultDeclaration = 'Player ${displayOX[2]} Wins!';
        // isWin = true;
      });
    }

    //for  tie condition
    else if (filledBoxes == 9) {
      resultDeclaration = 'Match Tie';
        // isWin = true;
    }
  }

  _clearBord() {
    setState(() {
      for (var i = 0; i < 9; i++) {
        displayOX[i] = '';
      }
      resultDeclaration = '';
    });
    filledBoxes = 0;
  }
}
