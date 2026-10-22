/// The shared store core for the `zuraffa_purchase` platform adapters.
///
/// * [StoreClient] — the transport seam the store flow runs over;
/// * [InAppPurchaseStoreClient] — the transport over
///   `package:in_app_purchase` (StoreKit on macOS/iOS, Play Billing on
///   Android);
/// * [StoreEventQueue] — the store's event buffer, which turns a firehose of
///   transactions into a terminal purchase and a settled restore;
/// * [InAppPurchaseStoreApi] — the [StoreApi] the flow implements;
/// * [StorePeriodResolver], [StorePurchaseParamBuilder] and
///   [StoreErrorFactory] — the seams through which a platform adapter hands
///   the core the store-specific knowledge it cannot hold itself.
library;

export 'src/in_app_purchase_client.dart';
export 'src/in_app_purchase_store_api.dart';
export 'src/store_client.dart';
export 'src/store_dialect.dart';
export 'src/store_event_queue.dart';
