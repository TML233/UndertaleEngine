# Undertale Engine

## About
![](https://img.shields.io/github/release-pre/TML233/undertale_engine.svg?style=flat-square ":no-zoom")
![](https://img.shields.io/github/stars/TML233/undertale_engine.svg?style=flat-square ":no-zoom")
![](https://img.shields.io/github/license/TML233/undertale_engine.svg?style=flat-square ":no-zoom")

**Undertale Engine** is a GameMaker project template with pre-made code and resources all ready for making Undertale fangames.
It includes the battle system, the overworld system, the multi-language system alongside other various useful features.

It is originally based on old GameMaker Studio 2 versions (prior than 2.3).
We are currently upgrading the project to comply with the latest GameMaker feature changes. If you're looking for the old version of this project, you can find it in the `old_version` and `old_version_examples` branches.

To get help and learn more about the engine, please join our Discord Server: https://discord.gg/njvUdff

## Added Features & Custom Extensions

We have expanded the engine template with a suite of classic Undertale gameplay mechanics and customization features:

### 1. Extended Soul Mechanics
- **Yellow Soul (Shooting Mode):** Blended yellow and flipped upside down. Pressing Confirm shoots a custom yellow projectile upwards which can collide with and destroy enemy bullets. Defined in [battle_soul_yellow.yy](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/objects/battle_soul_yellow/battle_soul_yellow.yy).
- **Blue Soul (Gravity Mode):** Adds gravity physics and directional horizontal movement. Pressing the Jump key gives the player upward velocity, supporting variable jump heights by releasing the key early. Defined in [battle_soul_blue.yy](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/objects/battle_soul_blue/battle_soul_blue.yy).
- **Green Soul (Shield Mode):** Locks the soul in the center of the battle board. The player controls a directional shield to block incoming spear/arrow attacks. Defined in [battle_soul_green.yy](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/objects/battle_soul_green/battle_soul_green.yy).
- **Purple Soul (Web/Line Mode):** Restricts the player's movement to 3 purple horizontal thread lines drawn on the board. The player jumps between threads using Up and Down inputs. Defined in [battle_soul_purple.yy](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/objects/battle_soul_purple/battle_soul_purple.yy).

### 2. Combat & Attack Mechanics
- **Cyan & Orange Attack Logic:** Bullet collision rules integrated in the base bullet script. Cyan bullets only damage the player if they are moving, while Orange bullets only damage the player if they are stationary.
- **Karma (KR) System:** When enabled, player damage pools into a Karma balance. HP decays over time based on current Karma levels, halting at 1 HP so Karma cannot kill the player directly. Features a custom split-color HP bar (yellow for safe HP, purple for Karma) and a "KR" text indicator.

### 3. Settings Rebinding & Volumes Menu
- **Interactive Control Binding:** Rebind inputs (UP, DOWN, LEFT, RIGHT, CONFIRM, CANCEL, MENU) dynamically by pressing the key. Settings persist automatically to a local `settings.json` file via [Settings_LoadSave.gml](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/scripts/Settings_LoadSave/Settings_LoadSave.gml).
- **Audio Volume Controls:** Dedicated settings options to adjust Master Volume, SFX Asset Gain, and BGM Gain in real-time.
- **Fullscreen Mode:** Toggle fullscreen mode in settings or with the F4 hotkey, saving the state across game launches.
- Managed by the [obj_settings.yy](file:///c:/Users/Mertisyoo/Documents/GitHub/UndertaleEngine1.1/objects/obj_settings/obj_settings.yy) controller.

### 4. Developer Debug Cheats
During any battle encounter, developers can test all the soul types and attacks using keyboard hotkeys:
- `1` - `5`: Switch to Red, Blue, Yellow, Green, or Purple Soul modes.
- `6`: Toggle Karma (KR) damage mode on/off.
- `7` / `8`: Spawn a Cyan / Orange test bullet moving across the board.
- `9`: Spawn an incoming Spear/Arrow towards the green shield.


If you're positive with this project, please give it a star and follow it on [GameJolt](https://gamejolt.com/games/undertale_engine/378055).


## Showcase
The Undertale fangames shown below are made with this Undertale Engine.

(TODO: Add links!)

* [Game Name](https://example.com) 
* [Game Name](https://example.com) 
* [Game Name](https://example.com) 