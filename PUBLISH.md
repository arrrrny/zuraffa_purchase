# Publish Configuration for `zuraffa_purchase`

<!-- Managed with the publish-manager skill. Edit if the workflow changes. -->

## Package Manager

- **Type**: `pub.dev`
- **Packages** (in publish order — the app package first; the platform core
  and the federated adapters declare their in-family dependencies hosted):
1. `zuraffa_purchase`
2. `zuraffa_purchase_platform`
3. `zuraffa_purchase_android`
4. `zuraffa_purchase_ios`
5. `zuraffa_purchase_macos`
- **All packages are public**

## Scripts

- **Pre-publish**: `./scripts/prepare_for_publish.sh <version> [-f]` — creates the `publish-<version>` branch, bumps all package versions + in-family constraints, resolves the changelog (root CHANGELOG entry first, git-history generation as fallback), checks pub.dev status + stray path deps, commits. Asks for a commit message on a TTY; `-f` (or automation) takes the default
- **Publish**: `./scripts/publish.sh` — per package in order: skips already-published, waits until every in-family dependency is on pub.dev AND pub-resolvable, then pub get → format → analyze → dry-run → publish; tags the release at the end (needs dart on PATH)
- **Post-publish**: `./scripts/push_to_master.sh [-f]` — merges the publish branch to master, tags, pushes; `-f` auto-commits dirty trees and deletes the branch
- **Restore dev**: `./scripts/restore_dev_setup.sh` — re-links the whole family via `dependency_overrides` (dev-only; pub strips overrides on publish)
- **Revert**: `./scripts/revert_publish_changes.sh` — abandons a publish: back to master, deletes the publish branch, restores dev setup (interactive)

## Workflow

### Automated (single command — no prompts)

```bash
bash scripts/prepare_for_publish.sh <version> -f && \
  git push origin "publish-$(grep '^version:' packages/zuraffa_purchase/pubspec.yaml | sed 's/version: //' | tr -d '[:space:]')" && \
  bash scripts/publish.sh && \
  bash scripts/push_to_master.sh -f
```

⚠️ `publish.sh` needs a 20–30 min timeout: every in-family dependency is
waited on until it is not just API-visible but actually resolvable by pub.

### Manual

1. Write the release notes as a `## <version>` entry in the root `CHANGELOG.md` (or let the prep script generate them from git history)
2. `./scripts/prepare_for_publish.sh <version>`
3. `git push origin publish-<version>`
4. `bash scripts/publish.sh`
5. `bash scripts/push_to_master.sh -f`

## Notes

- Sibling `dependency_overrides` never need converting: pub strips them when publishing. `restore_dev_setup.sh` re-links the family for local development.
- Sibling packages fail `dart pub publish --dry-run` until their hosted in-family dependencies exist on pub.dev — publish in order; `publish.sh` waits for each one and verifies resolvability, not just API presence.
- pub.dev's new-package rate limit can block first publishes of a whole family at once — re-run `publish.sh` later; it is idempotent.

---

**Mono version policy:** every package in the zuraffa fleet shares one version number. Bump the whole fleet with `../zuraffa/scripts/update_fleet.sh <version>`. Whenever a version is updated, the install guide in this repo's README.md MUST be updated to that release version in the same change — no old version constraints may linger in README install snippets. Dependency constraints on `zuraffa` itself must move to `^<version>` in the same bump.
