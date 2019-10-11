

import 'package:sipuadart/sdp/attributes/attribute.dart';

class PacketTime extends Attribute {

  PacketTime(String value) : super("ptime", value);

  PacketTime.empty() : super("ptime", "");

}