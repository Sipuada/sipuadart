import 'package:sipuadart/sdp/field.dart';

class PhoneNumber implements Field {

  static const _p = 112;

  String _phone;
  final int _type = _p;

  PhoneNumber(this._phone);

  int get type => _type;

  String get phone => _phone;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$phone";
  }

}