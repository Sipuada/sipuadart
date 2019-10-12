import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/protocol_version.dart';
import 'package:sipuadart/sdp/session_information.dart';
import 'package:sipuadart/sdp/session_name.dart';
import 'package:sipuadart/sdp/uniform_resource_identifier.dart';

void main() {

  const _typeU = 117;
  const _uri = 'u';

  group("Uniform Resource Identifier", () {

    test("compare an uniform resource identifier type as decimal", () {
      expect(_uri, String.fromCharCode(_typeU));
    });

    test('build an uniform resource identifier', () {
      final uri = "<uri>";
      final uniformResourceIdentifier = UniformResourceIdentifier(uri);
      expect(uniformResourceIdentifier.uri, uri);
      expect(uniformResourceIdentifier.type, _typeU);
      expect(uniformResourceIdentifier.toString(), '$_uri=$uri');
    });

  });





}