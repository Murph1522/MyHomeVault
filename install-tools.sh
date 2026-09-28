#!/usr/bin/env bash
# Fetches the 3D-print tools listed in TOOLS.md into ./tools and installs the
# simple ones. Run it yourself, after reading the projects you care about.
#
#   ./install-tools.sh            clone everything
#   ./install-tools.sh --install  clone, then install the Python/Node ones
#
# Not installed automatically: Sutura (writes to ~/.local, run its install.sh),
# FundaCAD (Rust/Tauri build), FreeCADTool (needs .NET + FreeCAD), print-fix
# (Blender add-on). MeshDoc and tinkerapp are plain HTML.
set -euo pipefail

cd "$(dirname "$0")"
ROOT="$PWD"
mkdir -p tools

REPOS=(
  GeekatplayStudio/Meshwright Krateian/Sutura Exulizer/MeshDoc Huzy85/MeshRight
  NikitaDmitryuk/stlbench bradselph/stl-split-tool Hanru269/print-fix
  Paraxdev/FundaCAD alexanderantonov/tinkerapp doccaz/meshprep
  pandaGao/gridfinity-studio JLay2026/partsmith zhicwan/manifold3d-mcp
  Graphene-Lab/FreeCADTool
)

for r in "${REPOS[@]}"; do
  n="${r#*/}"
  if [ -d "tools/$n" ]; then echo "have $n"; else git clone --depth 1 "https://github.com/$r.git" "tools/$n"; fi
done

[ "${1:-}" = "--install" ] || { echo "Cloned. Re-run with --install to set up Python/Node tools."; exit 0; }

pyinst() { # name, pip args...
  local name=$1; shift
  python3 -m venv "$ROOT/tools/.venvs/$name"
  "$ROOT/tools/.venvs/$name/bin/pip" install -q "$@"
}
mkdir -p tools/.venvs

(cd tools/Meshwright && pyinst meshwright -r requirements.txt)
(cd tools/MeshRight && pyinst meshright .)
(cd tools/stlbench && pyinst stlbench .)
(cd tools/stl-split-tool && pyinst stlsplit -r requirements.txt)
(cd tools/partsmith && pyinst partsmith -c constraints.txt -e .)

(cd tools/meshprep && npm install)
(cd tools/manifold3d-mcp && npm install)

echo "Done. Venvs are in tools/.venvs/<name>."
