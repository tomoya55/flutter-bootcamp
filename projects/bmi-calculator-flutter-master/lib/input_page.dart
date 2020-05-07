import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_icon.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected;
  int height = 180;
  int weight = 60;
  int age = 40;

  Color getColor(Gender g) => (g == Gender.male && selected == Gender.male) ||
          (g == Gender.female && selected == Gender.female)
      ? kActiveCardColor
      : kInactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      color: getColor(Gender.male),
                      cardChild: CardIcon(
                        iconData: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                      onTap: () {
                        setState(() {
                          selected = Gender.male;
                        });
                      }),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: getColor(Gender.female),
                    cardChild: CardIcon(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    onTap: () {
                      setState(() {
                        selected = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBoldLabelTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double val) {
                        setState(() {
                          height = val.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCounter(
                      label: 'WEIGHT',
                      value: weight,
                      onChange: (int val) {
                        setState(() {
                          weight = val;
                        });
                      }),
                ),
                Expanded(
                  child: ReusableCounter(
                      label: 'AGE',
                      value: age,
                      onChange: (int val) {
                        setState(() {
                          age = val;
                        });
                      }),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCounter extends StatelessWidget {
  const ReusableCounter({
    @required this.label,
    @required this.value,
    @required this.onChange,
  });

  final String label;
  final int value;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return ReuseableCard(
      color: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kBoldLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  onChange(value - 1);
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  onChange(value + 1);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4CF5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
