import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shop/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.apparel).existsSync(), isTrue);
    expect(File(Images.electronic).existsSync(), isTrue);
    expect(File(Images.school).existsSync(), isTrue);
    expect(File(Images.sport).existsSync(), isTrue);
  });
}
