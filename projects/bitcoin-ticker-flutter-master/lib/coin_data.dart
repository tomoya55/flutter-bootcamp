import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPI = 'https://rest.coinapi.io';

class CoinData {
  Future<dynamic> getCoinData(List<String> bases, String quote) async {
    var url = '$coinAPI/v1/exchangerate/$quote?invert=true';
    http.Response resp = await http.get(url,
        headers: {'X-CoinAPI-Key': '87A8F514-B33F-4EC7-9579-2B157595381F'});
    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print(resp.statusCode);
    }
  }
}
