# 3D Print Tools

Third-party projects for editing, repairing and making 3D-print files. None of their code is stored in this repo. `install-tools.sh` fetches them into `tools/` (git-ignored) when you choose to run it.

These are small, mostly new projects and have not been audited. Read a project's code before installing it.

## Mesh repair and prep

| Project | What it does | Install |
|---|---|---|
| [GeekatplayStudio/Meshwright](https://github.com/GeekatplayStudio/Meshwright) | Mesh analysis, repair and retopology (trimesh-based) | Python venv, `pip install -r requirements.txt` |
| [Krateian/Sutura](https://github.com/Krateian/Sutura) | Watertight STL/3MF/OBJ repair, CLI + Qt GUI (Linux/macOS) | its own `install.sh` (writes to `~/.local`) |
| [Exulizer/MeshDoc](https://github.com/Exulizer/MeshDoc) | In-browser mesh diagnostics and repair | none, open `index.html` |
| [Huzy85/MeshRight](https://github.com/Huzy85/MeshRight) | Beginner-friendly mesh repair, runs in browser | Python venv, `pip install .` |
| [NikitaDmitryuk/stlbench](https://github.com/NikitaDmitryuk/stlbench) | Resin-print prep: repair, orient, scale, pack, export 3MF | Python venv, `pip install .` |
| [bradselph/stl-split-tool](https://github.com/bradselph/stl-split-tool) | Split an STL into watertight halves | Python venv, `pip install -r requirements.txt` |
| [Hanru269/print-fix](https://github.com/Hanru269/print-fix) | One-click repair Blender add-on | install in Blender (needs Blender) |

## Making and editing models

| Project | What it does | Install |
|---|---|---|
| [Paraxdev/FundaCAD](https://github.com/Paraxdev/FundaCAD) | Parametric desktop CAD, exports STEP/STL/3MF | Rust + Node build (Tauri), see its README |
| [alexanderantonov/tinkerapp](https://github.com/alexanderantonov/tinkerapp) | Offline Tinkercad-style editor | none, open `tinkerapp.html` |
| [doccaz/meshprep](https://github.com/doccaz/meshprep) | Browser OBJ editor and print optimizer | `npm install && npm run dev` |
| [pandaGao/gridfinity-studio](https://github.com/pandaGao/gridfinity-studio) | Gridfinity tray/riser generator, STL + Bambu 3MF | Node, see `web/` |

## AI-driven CAD (Claude Code / MCP)

| Project | What it does | Install |
|---|---|---|
| [JLay2026/partsmith](https://github.com/JLay2026/partsmith) | build123d CAD server for agents via REST + MCP | Python venv, `pip install -c constraints.txt -e .` |
| [zhicwan/manifold3d-mcp](https://github.com/zhicwan/manifold3d-mcp) | Text-to-CAD MCP server, exports 3MF/GLB | `npm install` |
| [Graphene-Lab/FreeCADTool](https://github.com/Graphene-Lab/FreeCADTool) | Lets an agent drive FreeCAD | needs .NET and FreeCAD |

## Also worth knowing

OpenSCAD, CadQuery, build123d, FreeCAD, Blender, trimesh, PrusaSlicer, OrcaSlicer, Cura, Klipper and Marlin are the established options and were not surfaced by the search above.
