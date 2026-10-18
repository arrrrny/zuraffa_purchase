# zuraffa_purchase — monorepo

Purchase support for the Zuraffa ecosystem: a pure-Dart port behind an injected platform channel with federated adapters.

Built on the [Zuraffa](https://pub.dev/packages/zuraffa) framework as part
of the zuraffa-native package family (EPIC #214).

## Packages

| Package | Description |
| --- | --- |
| [`packages/zuraffa_purchase`](packages/zuraffa_purchase/) | App-facing package: `PurchasePort`, `PurchaseService`, typed failures + DI registration |
| [`packages/zuraffa_purchase_platform`](packages/zuraffa_purchase_platform/) | Shared channel-envelope core over an injected platform channel |
| [`packages/zuraffa_purchase_android`](packages/zuraffa_purchase_android/) | Android adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_purchase_ios`](packages/zuraffa_purchase_ios/) | iOS adapter (typed taxonomy over the injected channel) |
| [`packages/zuraffa_purchase_macos`](packages/zuraffa_purchase_macos/) | macOS adapter (typed taxonomy over the injected channel) |

Publish from each package directory (`packages/<name>`); the federated
siblings depend on each other via hosted dependencies — see
[`PUBLISH.md`](PUBLISH.md) and `scripts/` for the publish pipeline.

See [`specs/`](specs/) for the spec-driven development records.

Repository: https://github.com/arrrrny/zuraffa_purchase
