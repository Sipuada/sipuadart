

import 'package:sipuadart/sdp/attributes/attribute.dart';

class Tool extends Attribute {

  Tool(String value) : super("tool", value);

  Tool.empty() : super("tool", "");

}