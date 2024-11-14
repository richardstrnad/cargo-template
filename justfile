alias b := build
alias l := lint

build:
  @echo "Building..."
  cargo build --release
  @echo "Done."

@verify: test lint

test:
  cargo test

lint:
  cargo fmt --all -- --check
  cargo clippy

fmt:
  cargo fmt

dev:
  watchexec cargo run --bin {{ crate-name }}
