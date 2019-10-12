import 'package:sipuadart/sdp/field.dart';

class EmailAddress implements Field {

  static const _e = 101;

  String _email;
  final int _type = _e;

  EmailAddress(this._email);

  int get type => _type;

  String get email => _email;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$email";
  }

}