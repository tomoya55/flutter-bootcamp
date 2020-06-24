import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main.freezed.dart';

@freezed
abstract class MyClass with _$MyClass {
  MyClass._();
  factory MyClass({String a, int b, DateTime created}) = _MyClass;

  @late
  String get now => DateTime.now().toString();

  void method() {
    print("hello, world");
  }
}

@freezed
abstract class OurClass with _$OurClass {
  const OurClass._();
  const factory OurClass(int value) = IntData;
  const factory OurClass.string(String value) = StringData;

  String patternMatch() =>
      when((v) => 'int = $v', string: (s) => 'string = $s');
}

@freezed
abstract class DeckState implements _$DeckState {
  const DeckState._();
  const factory DeckState({List<CardState> cards}) = _DeckState;
}

@freezed
abstract class CardState implements _$CardState {
  const CardState._();
  const factory CardState({String name, List<ClozeState> clozes}) = _CardState;
}

@freezed
abstract class ClozeState implements _$ClozeState {
  const ClozeState._();
  const factory ClozeState({bool responded}) = _ClozeState;
}

void main() {
  final ins = MyClass(a: '42', b: 42);
  print(ins.toString());
  ins.method();

  final ins2 = ins.copyWith(a: 'Hello');
  print(ins2);

  // ==
  print(ins.copyWith() == ins);

  final o = OurClass(42);
  print(o.toString());
  final os = OurClass.string("value");
  print(os.toString());

  print(o.patternMatch());
  print(os.patternMatch());

  print(ins.now.toString());

  final ds = DeckState(cards: [
    CardState(name: "a", clozes: [
      ClozeState(responded: false),
      ClozeState(responded: false),
      ClozeState(responded: false),
    ]),
    CardState(name: "b", clozes: [
      ClozeState(responded: false),
      ClozeState(responded: false),
      ClozeState(responded: false),
    ])
  ]);
  print(ds);
  final cards = ds.cards;
  final clozes = cards[0].clozes;
  final newClozes = clozes..[0].copyWith(responded: true);
  final newCards = cards..[0].copyWith(clozes: newClozes);
  final ds2 = ds.copyWith(cards: newCards);
  print(ds2);
  // final ds3 = ds.copyWith(cards: ds.cards..add(CardState(name: "b")));
  // print(ds3.cards);
}
