import "package:unittest/unittest.dart";
import 'package:hades_engine/firstTests.dart';
import 'package:hades_engine/canvas.dart';
import 'package:unittest/html_config.dart';

import "dart:html";

void main()
{
  useHtmlConfiguration();
  
  test("firstFailingTest", () => expect(first_test(), true));
  test("testMethodFromHadesEngineReturnsTrue", () => expect(testMethodFromHadesEngineReturnsTrue(), true));
  test("testCanvasObjectExists", () => expect(testCanvasObjectExists(), isNotNull));
  
  group("Canvas Tests", () {
    setUp(() { createCanvasElement(); });
    test("Test if Canvas element exists in HTML", () => expect(getCanvasElement("#myCanvas"), isNotNull));
  });
}

bool first_test()
{
  return true;
}

bool testMethodFromHadesEngineReturnsTrue() {
  return returnTrue();
}

Canvas testCanvasObjectExists() {
  return new Canvas();
}

Element getCanvasElement(String id)
{
  return querySelector('canvas');
}