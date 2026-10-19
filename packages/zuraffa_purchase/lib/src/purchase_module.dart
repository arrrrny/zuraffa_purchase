/// A compiled WebAssembly module, bound to [id] inside the owning
/// engine/adapter until unloaded.
class PurchaseModule {
  final String id;
  final int byteLength;

  const PurchaseModule({required this.id, required this.byteLength});
}
