import 'package:sipuadart/sdp/attributes/attribute.dart';

class Category extends Attribute {

  Category(String value) : super("cat", value);

  Category.empty() : super("cat", "");

}