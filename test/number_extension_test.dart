import 'package:flutter_test/flutter_test.dart';
import 'package:number_extension/number_extension.dart';

void main() {
  test('adds one to input values', () {
    expect(NumberExtension.internationSystem(100000), '100 K');
    expect(NumberExtension.internationSystem(1000000), '1.0 M');
    expect(NumberExtension.internationSystem(10000000000000), '10.0 T');
    expect(NumberExtension.indianSystem(100000), '1.0 Lac');
    expect(NumberExtension.indianSystem(100000000), '10.0 Crore');
    expect(NumberExtension.indianSystem(1000000000), '1.0 Arab');
  });
}
