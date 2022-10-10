import 'package:flutter_test/flutter_test.dart';

import 'package:number_extension/number_extension.dart';

void main() {
  test('adds one to input values', () {
    final numberSystem = NumberExtension();
    expect(numberSystem.internationSystem(100000), '100 K');
    expect(numberSystem.internationSystem(1000000), '1.0 M');
    expect(numberSystem.internationSystem(10000000000000), '10.0 T');
    expect(numberSystem.indianSystem(100000), '1.0 Lac');
    expect(numberSystem.indianSystem(100000000), '10.0 Crore');
    expect(numberSystem.indianSystem(1000000000), '1.0 Arab');
  });
}
