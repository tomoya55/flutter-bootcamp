import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bitcoin_ticker/coin_data.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  CoinData c = CoinData();
  List<String> bases = ['BTC', 'ETH', 'LTC'];
  String selected = currenciesList[0];
  dynamic data;
  List<String> rates = ['1', '1', '1'];

  Widget getDropdownButton() {
    return DropdownButton<String>(
      items: currenciesList
          .map(
            (cur) => DropdownMenuItem(child: Text(cur), value: cur),
          )
          .toList(),
      onChanged: (val) {
        setState(() {
          selected = val;
          loadData();
        });
      },
    );
  }

  Widget getiOSPicker() {
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (idx) {
        setState(() {
          selected = currenciesList[idx];
          loadData();
        });
      },
      children: currenciesList.map<Text>((cur) => Text(cur)).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    data = await c.getCoinData(bases, selected);
    setState(() {
      data['rates'].forEach((e) {
        var idx = bases.indexOf(e['asset_id_quote']);
        if (idx != -1) {
          if (e['rate'] is int) {
            rates[idx] = e['rate'].toString();
          } else {
            rates[idx] = (e['rate'] as double).toStringAsFixed(2);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...bases.map((b) {
            var idx = bases.indexOf(b);
            return Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 ${bases[idx]} = ${rates[idx]} $selected',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? getiOSPicker() : getDropdownButton(),
          ),
        ],
      ),
    );
  }
}
