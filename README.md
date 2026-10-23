# Devious Curses External Events

A fork of [Devious Curses NG](https://www.loverslab.com/files/file/41083-devious-curses-ng/) that lets other mods add a weighted bucket to the chest, door, and body roll. Devious Curses still decides whether anything fires. A registered event only competes with the built-in weights.

Version 0.10.1. The original release is 0.9.0.

See [docs/ExternalEvents.md](docs/ExternalEvents.md) for the events, the id rules, and a Papyrus example.

## Install

This is a DLL. Replace `DeviousCurses.dll` in the installed Devious Curses mod and keep the original plugin. Recompile `DCurses_MCM.psc`. That script sends `DCurses_RequestEvents` on reload, and it adds the External Events page.
