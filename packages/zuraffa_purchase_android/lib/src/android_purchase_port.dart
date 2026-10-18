import 'dart:typed_data';

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'android_purchase_channel.dart';
import 'android_purchase_exception.dart';

/// Android [PurchasePort] over the typed
/// [AndroidPurchaseChannel].
class AndroidPurchasePort implements PurchasePort {
  final AndroidPurchaseChannel channel;

  const AndroidPurchasePort({required this.channel});

  @override
  Future<bool> isSupported() async {
    final result = await channel.call('isSupported', const {});
    return result?['supported'] == true;
  }

  @override
  Future<PurchaseModule> compile({
    required String id,
    required Uint8List bytes,
  }) async {
    final result = await channel.call('compile', {
      'id': id,
      'bytes': bytes,
    });
    return PurchaseModule(
      id: id,
      byteLength:
          (result?['byteLength'] as num?)?.toInt() ?? bytes.lengthInBytes,
    );
  }

  @override
  Future<List<PurchaseValue>> invoke({
    required String id,
    required String export,
    List<PurchaseValue> args = const [],
  }) async {
    final result = await channel.call('invoke', {
      'id': id,
      'export': export,
      'args': [for (final arg in args) arg.encode()],
    });
    final values = result?['values'];
    if (values is! List) {
      throw const AndroidPurchaseException(
        'malformed_response',
        'The invoke result carried no value list.',
        recoverable: false,
      );
    }
    return [for (final raw in values) PurchaseValue.decode(raw)];
  }

  @override
  Future<void> unload({required String id}) async {
    await channel.call('unload', {'id': id});
  }
}
