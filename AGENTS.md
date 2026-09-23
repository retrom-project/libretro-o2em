# Retrom O2EM fork

`master` mirrors upstream `libretro/libretro-o2em` without Retrom changes.
`retrom/g679d6fec0496` is the maintenance/default branch. Develop from it on
`feat/*`, `fix/*`, `build/*`, or `sync/upstream-*` branches. Do not edit the mirror.

Read `docs/MAINTENANCE.md` and `retrom-fork.json` before changing build inputs.
Keep core code, Web build, checks, source archive, and release metadata in this fork.
Never commit games, BIOS, voice samples, or generated binaries.

Run `.github/rpg-runtime/test-native.sh` and build candidates through Retrom's
`pfb-core-build`. Validate real input and fresh-instance checkpoint restore in
the Retrom product before considering a release. Tags use
`retrom-core-g679d6fec0496-rN` from the maintenance branch.
