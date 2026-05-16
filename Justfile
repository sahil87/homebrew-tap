# List available recipes (default when running bare `just`).
default:
    @just --list

# Cut a release of the `all` meta-formula: push the next tag and let CI
# recompute the tarball sha256 and rewrite Formula/all.rb. Working tree
# must be clean. (patch|minor|major, default: patch)
release bump="patch":
    ./scripts/release.sh {{bump}}
