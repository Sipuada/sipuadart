import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/email_address.dart';
import 'package:sipuadart/sdp/protocol_version.dart';
import 'package:sipuadart/sdp/session_information.dart';
import 'package:sipuadart/sdp/session_name.dart';

void main() {

  const _typeE = 101;
  const _email = 'e';

  group("Email Address", () {

    test("compare email address type as decimal", () {
      expect(_email, String.fromCharCode(_typeE));
    });

    test('build an email address', () {
      final email = "<email-address>";
      final emailAddress = EmailAddress(email);
      expect(emailAddress.email, email);
      expect(emailAddress.type, _typeE);
      expect(emailAddress.toString(), '$_email=$email');
    });

  });





}