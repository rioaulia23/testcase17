part of 'testcase_bloc.dart';

@immutable
abstract class TestcaseEvent {}

class SoalEvent extends TestcaseEvent {
  @override
  String toString() => 'SoalEvent';
}

class Soal2Event extends TestcaseEvent {
  @override
  String toString() => 'Soal2Event';
}
