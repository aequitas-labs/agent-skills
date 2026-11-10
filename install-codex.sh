#!/bin/sh
# Links every skill in this repo into Codex's skills folder, so a `git pull`
# here updates them. Run it again after adding a skill.
set -eu

here=$(cd "$(dirname "$0")" && pwd)
dest="${CODEX_HOME:-$HOME/.codex}/skills"
mkdir -p "$dest"

for dir in "$here"/skills/*/; do
  name=$(basename "$dir")
  target="$dest/$name"
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "skipped $name: $target exists and isn't a link from this repo" >&2
    continue
  fi
  ln -sfn "${dir%/}" "$target"
  echo "linked $name -> $target"
done
