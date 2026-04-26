# Releasing the `ai` meta-formula

`Formula/ai.rb` is a meta-package that depends on `fab-kit`, `rk`, and `tu`. Because Homebrew requires a `url` + `sha256` even for dependency-only formulas, releasing it means tagging this tap repo and pinning the tarball hash — a small chicken-and-egg dance.

The other formulas (`fab-kit`, `rk`, `tu`) are released from their own repos by automation; this doc only covers the meta-formula.

## Cutting a new version

Bump `version` in `Formula/ai.rb` first, then:

```bash
# 1. Commit the formula with a placeholder sha
git add Formula/ai.rb
git commit -m "Bump ai meta-formula to vX.Y.Z"

# 2. Tag and push
git tag vX.Y.Z
git push origin main --tags

# 3. Compute the sha256 of the published tarball
curl -sL https://github.com/sahil87/homebrew-tap/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

Paste the resulting hash into `Formula/ai.rb` (replacing the previous `sha256`), then:

```bash
git add Formula/ai.rb
git commit -m "Pin ai meta-formula sha256 for vX.Y.Z"
git push
```

## Verifying

```bash
brew untap sahil87/tap 2>/dev/null; brew tap sahil87/tap
brew install sahil87/tap/ai
```

Should pull `fab-kit`, `rk`, and `tu` as dependencies.