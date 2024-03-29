import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shop/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.rectangle25).existsSync(), isTrue);
    expect(File(Images.rectangle17).existsSync(), isTrue);
    expect(File(Images.rectangle30).existsSync(), isTrue);
    expect(File(Images.airpodmax).existsSync(), isTrue);
    expect(File(Images.all).existsSync(), isTrue);
    expect(File(Images.apparel).existsSync(), isTrue);
    expect(File(Images.banner1).existsSync(), isTrue);
    expect(File(Images.beats).existsSync(), isTrue);
    expect(File(Images.earphones).existsSync(), isTrue);
    expect(File(Images.electronic).existsSync(), isTrue);
    expect(File(Images.img1).existsSync(), isTrue);
    expect(File(Images.img2).existsSync(), isTrue);
    expect(File(Images.monitor).existsSync(), isTrue);
    expect(File(Images.mug).existsSync(), isTrue);
    expect(File(Images.school).existsSync(), isTrue);
    expect(File(Images.sport).existsSync(), isTrue);
  });
}
