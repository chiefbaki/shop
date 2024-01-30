import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shop/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.rectangle25).existsSync(), isTrue);
    expect(File(Images.rectangle17).existsSync(), isTrue);
    expect(File(Images.rectangle30).existsSync(), isTrue);
  });
}
