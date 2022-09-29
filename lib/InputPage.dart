import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Constants.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

enum Gender {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int _height = 180;
  int _weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    )),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    //change color somehow
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: "FEMALE",
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: kLableTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _height.toString(),
                            style: kSliderTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLableTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: kSliderActiveColor,
                          inactiveTrackColor: kSliderInactiveColor,
                          overlayColor: kOverlayColor,
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          thumbColor: kThumbColor,
                        ),
                        child: Slider(
                          value: _height.toDouble(),
                          // thumbColor: kThumbColor,
                          onChanged: (double newHeight) {
                            setState(() {
                              _height = newHeight.round();
                            });
                          },
                          max: 220.0,
                          min: 120.0,
                        ),
                      )
                    ],
                  ),
                  color: kActiveCardColor,
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: kLableTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _weight.toString(),
                            style: kSliderTextStyle,
                          ),
                          Text(
                            'kg',
                            style: kLableTextStyle,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                _weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                _weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  color: kActiveCardColor,
                ),
              )
            ],
          )),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      elevation: 0.0,
    );
  }
}
