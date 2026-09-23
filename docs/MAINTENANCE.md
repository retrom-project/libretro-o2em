# O2EM browser integration

The upstream baseline is `libretro/libretro-o2em` at commit
`679d6fec04963f6e70a7ec217e3d0ebb1fe472fc`. This fork builds the existing
libretro core for the EmulatorJS RetroArch linker pinned in `retrom-fork.json`.
The Emscripten target disables The Voice; speech samples are not supported in
this browser candidate. Cartridge `.bin` and user-provided firmware are required.

The native test uses upstream's synthetic, redistributable ROM to verify
fresh-process instant-state determinism and repeated lifecycle startup. No
third-party game or BIOS is stored here. A PFB core build records source-tree
and artifact hashes in `retrom-core-candidate.json`; formal release assets are
built by the same recipe after product validation.

The release contains the O2EM Artistic-2.0 license and the linked RetroArch
license. Real Retrom review preview, product launch, controller input, save,
fresh launch restore, and continued input are required before release.
