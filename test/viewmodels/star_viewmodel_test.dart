import 'package:flutter_test/flutter_test.dart';
import 'package:car_meta/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StarViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
