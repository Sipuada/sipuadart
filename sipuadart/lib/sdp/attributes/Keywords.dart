import 'package:sipuadart/sdp/attributes/attribute.dart';

class Keywords extends Attribute {

  Keywords(String value) : super("keywds", value);

  Keywords.empty() : super("keywds", "");

}