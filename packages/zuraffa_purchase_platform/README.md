# zuraffa_purchase_platform

Shared channel-envelope core for the zuraffa_purchase platform adapters: decode,
typed-error plumbing, and timeout policy over an injected platform
channel. Adapters bring their own typed exception and taxonomy; the core
never invents one.

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo.

## Develop

```bash
dart pub get
dart test
```
