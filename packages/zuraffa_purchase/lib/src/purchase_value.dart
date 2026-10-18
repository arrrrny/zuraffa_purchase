import 'purchase_exception.dart';

/// A WebAssembly scalar value crossing the platform boundary.
///
/// The scaffold ships the four numeric types; the migration extends the
/// family (reference types, vectors) without breaking the contract.
sealed class PurchaseValue {
  const PurchaseValue();

  /// Encodes this value into the primitive representation transported over
  /// the platform channel. i64 travels as a decimal string — channel
  /// payloads cannot carry a BigInt losslessly.
  Object encode() => switch (this) {
        PurchaseI32(:final value) => value,
        PurchaseI64(:final value) => value.toString(),
        PurchaseF32(:final value) => value,
        PurchaseF64(:final value) => value,
      };

  /// Decodes a channel payload into a [PurchaseValue]: ints decode as
  /// i32, doubles as f64, and decimal strings as i64.
  ///
  /// Note: the wire form carries no precision marker, so a [PurchaseF32]
  /// narrows to [PurchaseF64] on decode — [PurchaseF32] is a client-side
  /// convenience that does not survive a round-trip. Callers that need to
  /// preserve 32-bit precision must track it out-of-band.
  static PurchaseValue decode(Object? raw) {
    if (raw is int) return PurchaseI32(raw);
    if (raw is double) return PurchaseF64(raw);
    if (raw is String) {
      final parsed = BigInt.tryParse(raw);
      if (parsed != null) return PurchaseI64(parsed);
    }
    throw PurchaseException(
      'malformed_value',
      'Cannot decode "$raw" into a PurchaseValue.',
      recoverable: false,
    );
  }
}

/// A 32-bit integer value.
class PurchaseI32 extends PurchaseValue {
  final int value;

  const PurchaseI32(this.value);
}

/// A 64-bit integer value (transported as a decimal string).
class PurchaseI64 extends PurchaseValue {
  final BigInt value;

  const PurchaseI64(this.value);
}

/// A 32-bit float value.
///
/// Client-side convenience: [encode] emits a [double] with no precision
/// marker, so [PurchaseValue.decode] returns a [PurchaseF64]. F32 does not
/// survive a round-trip over the channel.
class PurchaseF32 extends PurchaseValue {
  final double value;

  const PurchaseF32(this.value);
}

/// A 64-bit float value.
class PurchaseF64 extends PurchaseValue {
  final double value;

  const PurchaseF64(this.value);
}
