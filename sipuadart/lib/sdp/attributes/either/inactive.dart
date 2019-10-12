import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class Inactive extends Attribute {

  static const _level = AttributeLevel.either;
  static const _attribute = "inactive";

  Inactive.empty() : super(_level, _attribute, "");

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$attribute";
  }

}