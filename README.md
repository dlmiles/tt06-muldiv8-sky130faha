![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# Combinational multiply / divider unit (8+8 input)

This is a clone of tt06-muldiv8 but uses the SKY130 FA (Full Adder) and
HA (Half Adder) specific cells.  The current flow is not able to manage
these kinds of standard cells due to their 2 output nature, so this project
intends to allow comparison between, to validate that using them has some
benefit.

Maybe there should be a DIVUNIT cell that attempts to combine the restoring
MUX into the same area.  This is something to evaluate in the future for
this topology.

NOTE: at this time PDK 2023.12.24 the sky130 FA with drive level 4 is in the
DONT_USE_CELLS sky130_fd_sc_hd__fa_4 list.  It is not clear why that is the
case at this time.

## Original tt06-muldiv8 documentation

Next iteration from original tt04-muldiv4 towards painting multipler GDS
directly.  This time we use SpinalHDL functional programming to generate
netlist for toplogy instead of logicsim-evolution.

Doing this exercise has highlighted well the repeated blocks and the edge
integration (the differences in function requirements for the edges of the
design, due to the way it integrated with the previous or next component,
due to signal pruning, for example use of half-adder instead of full-adder).

[More Documentation](docs/info.md)
[Project: tt06-muldiv8](https://github.com/dlmiles/tt06-muldiv8)

# Tiny Tapeout Verilog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Verilog Projects

1. Add your Verilog files to the `src` folder.
2. Edit the [info.yaml](info.yaml) and update information about your project, paying special attention to the `source_files` and `top_module` properties. If you are upgrading an existing Tiny Tapeout project, check out our [online info.yaml migration tool](https://tinytapeout.github.io/tt-yaml-upgrade-tool/).
3. Edit [docs/info.md](docs/info.md) and add a description of your project.
4. Optionally, add a testbench to the `test` folder. See [test/README.md](test/README.md) for more information.

The GitHub action will automatically build the ASIC files using [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/).

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
