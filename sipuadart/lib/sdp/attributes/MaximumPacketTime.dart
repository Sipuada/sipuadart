import 'package:sipuadart/sdp/attributes/attribute.dart';

class MaximumPacketTime extends Attribute {

  MaximumPacketTime(String value) : super("maxptime", value);

  MaximumPacketTime.empty() : super("maxptime", "");

}