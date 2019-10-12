import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/email_address.dart';
import 'package:sipuadart/sdp/phone_number.dart';
import 'package:sipuadart/sdp/protocol_version.dart';
import 'package:sipuadart/sdp/session_information.dart';
import 'package:sipuadart/sdp/session_name.dart';

void main() {

  const _typeP = 112;
  const _phone = 'p';

  group("Phone Number", () {

    test("compare phone number type as decimal", () {
      expect(_phone, String.fromCharCode(_typeP));
    });

    test('build an phone number', () {
      final phone = "<phone-number>";
      final phoneNumber = PhoneNumber(phone);
      expect(phoneNumber.phone, phone);
      expect(phoneNumber.type, _typeP);
      expect(phoneNumber.toString(), '$_phone=$phone');
    });

  });

}