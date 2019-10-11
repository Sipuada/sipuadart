import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/attributes/Category.dart' as sdpCategory;
import 'package:sipuadart/sdp/attributes/Keywords.dart';
import 'package:sipuadart/sdp/attributes/MaximumPacketTime.dart';
import 'package:sipuadart/sdp/attributes/PacketTime.dart';
import 'package:sipuadart/sdp/attributes/Tool.dart';

void main() {
//  test('adds one to input values', () {
//    final calculator = Calculator();
//    expect(calculator.addOne(2), 3);
//    expect(calculator.addOne(-7), -6);
//    expect(calculator.addOne(0), 1);
//    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
//  });

  group("Attribute - Category", () {

    final cat = "cat";
    test('build an empty attribute category', () {
      final attribute = sdpCategory.Category.empty();
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, cat);
      expect(attribute.value, '');
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), 'a=$cat:');
    });

    test('build an attribute category', () {
      final value = "category";
      final attribute = sdpCategory.Category(value);
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, 'cat');
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), 'a=$cat:$value');
    });

  });

  group("Attribute - Keywords", () {

    final keywds =  "keywds";
    test('build an empty attribute keyword', () {
      final attribute = Keywords.empty();
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, keywds);
      expect(attribute.value, '');
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), 'a=$keywds:');
    });

    test('build an attribute keyword', () {
      final value = "keywords";
      final attribute = Keywords(value);
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, keywds);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), 'a=$keywds:$value');
    });

  });

  group("Attribute - Tool", () {

    final tool = "tool";
    test('build an empty attribute tool', () {
      final attribute = Tool.empty();
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, tool);
      expect(attribute.value, '');
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), 'a=$tool:');
    });

    test('build an attribute tool', () {
      final value = "name and version of tool";
      final attribute = Tool(value);
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, tool);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), 'a=$tool:$value');
    });

  });

  group("Attribute - Packet Time", () {

    final ptime = "ptime";
    test('buid an empty attribute packet time', () {
      final attribute = PacketTime.empty();
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, ptime);
      expect(attribute.value, '');
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), 'a=$ptime:');
    });

    test('build an attribute packet time', () {
      final value = "packet time";
      final attribute = PacketTime(value);
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, ptime);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), 'a=$ptime:$value');
    });

  });

  group("Attribute - Maximum Packet Time", () {

    final maxptime = "maxptime";
    test('buid an empty attribute maximum packet time', () {
      final attribute = MaximumPacketTime.empty();
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, maxptime);
      expect(attribute.value, '');
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), 'a=$maxptime:');
    });

    test('build an attribute maximum packet time', () {
      final value = "maximum packet time";
      final attribute = MaximumPacketTime(value);
      expect(attribute.type, 'a'.codeUnitAt(0));
      expect(attribute.attribute, maxptime);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), 'a=$maxptime:$value');
    });

  });

}
