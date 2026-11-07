/// The outcome taxonomy of a purchase attempt.
///
/// The store reports its own vocabulary; the port maps it onto this one so
/// the domain never speaks in platform terms.
enum PurchaseStatus {
  /// The store completed the purchase.
  purchased,

  /// The store replayed a purchase the user already owned.
  restored,

  /// The store deferred the purchase — parental approval, or a payment retry.
  /// Not a failure: the purchase may still complete later.
  pending,

  /// The user dismissed the purchase sheet.
  cancelled,

  /// The purchase failed.
  failed,
}
