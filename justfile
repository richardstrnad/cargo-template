alias d := dev
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
  cargo watch -x "run --bin {{ crate_name }}"
