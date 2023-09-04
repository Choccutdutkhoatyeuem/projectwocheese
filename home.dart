import 'package:app_bmi_2/components/Reuseable.dart';
import 'package:app_bmi_2/components/iconwithlabel.dart';
import 'package:flutter/material.dart';

enum GenderSelect {
  male,
  female,
  other,
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final inActiveColor = Color.fromARGB(255, 76, 78, 106);
  final activeColor = Color.fromARGB(255, 76, 78, 106);
  GenderSelect selection = GenderSelect.other;
  int _height = 160;
  int _weight = 60;
  int _age = 20;

 void _incrementCounter() {
    setState(() {
      _weight++;
    });
  }

  void _decrementCounter() {
    setState(() {
        _weight--;
    });
  }

  void _PlusIcon() {
    setState(() {
      _age++;
    });
  }
  void _MinusIcon() {
    setState(() {
        _age--;
    });
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(211, 111, 108, 108),
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  ReuseableCard(
                    color: selection == GenderSelect.male
                        ? activeColor
                        : inActiveColor,
                    myChild: IconwithLabel(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onpress: () {
                      (() {
                        selection = GenderSelect.male;
                      });
                    },
                  ),
                  ReuseableCard(
                    color: selection == GenderSelect.male
                        ? inActiveColor
                        : activeColor,
                    myChild: IconwithLabel(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onpress: () {
                      (() {
                        selection = GenderSelect.female;
                      });
                    },
                  ),
                ],
              ),
            ),
            ReuseableCard(
              color: Color.fromARGB(255, 116, 116, 120),
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'HEIGHT',
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        child: Text(
                          _height.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('cm'),
                      ),
                    ],
                  ),
                  Container(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2,
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color.fromARGB(232, 0, 0, 0),
                        thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30),
                      ),
                      child: Slider(
                        max: 220,
                        min: 120,
                        onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.toInt().round();
                          });
                        },
                        value: _height.toDouble(),
                      ),
                    ),
                  ),
                ],
              ),
              onpress: () {},
            ),
            Expanded(
              child: Row(
                children: [
                  ReuseableCard(
                    color: Color.fromARGB(255, 116, 116, 120),
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('WEIGHT'),
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Container(
                              child: Text(
                                _weight.toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: Icon(Icons.add),
                    backgroundColor: Colors.orange,
                  ),
                            SizedBox(
                              width: 5,
                            ),
                           
                              FloatingActionButton(
                    onPressed: _decrementCounter,
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.orange,
                  ),
                          
                          ],
                        ),
                      ],
                    ),
                    onpress: () {},
                  ),
                  ReuseableCard(
                    color: Color.fromARGB(255, 116, 116, 120),
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('AGE'),
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Container(
                              child: Text(
                                _age.toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           FloatingActionButton(
                    onPressed: _PlusIcon,
                    child: Icon(Icons.add),
                    backgroundColor: Colors.orange,
                  ),
                            SizedBox(
                              width: 5,
                            ),
                            FloatingActionButton(
                    onPressed: _MinusIcon,
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.orange,
                  ),
                          ],
                        ),
                      ],
                    ),
                    onpress: () {},
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CALCULATE'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(211, 111, 108, 108),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FontAwesomeIcons {
}
