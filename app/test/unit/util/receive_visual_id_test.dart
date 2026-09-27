import 'package:test/test.dart';
import 'package:yidrop_app/util/ip_helper.dart';

void main() {
  test('keeps the last IPv4 octet under the device alias', () {
    expect(formatReceiveVisualIds(['192.168.1.42']), '#42');
  });
  test('multiple networks keep their order and deduplicate equal suffixes', () {
    expect(formatReceiveVisualIds(['192.168.1.42', '10.0.0.7', '172.16.0.42']), '#42 #7');
  });
  test('no IP yet does not fabricate a device identifier', () {
    expect(formatReceiveVisualIds([]), '');
  });
}
