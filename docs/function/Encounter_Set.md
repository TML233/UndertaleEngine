# Encounter_Set {docsify-ignore-all}

## Description
Set the encounter data of the encounter id that you want.

## Syntax
```gml
Encounter_Set(id, enemy_0, enemy_1, enemy_2, menu_dialog, bgm*, flee_enabled*, pause_bgm*, quick*, soul_x*, soul_y*);
```

## Arguments
| Argument | Type | Description |
| :-- | :-- | :-- |
| id | Real | The encounter id that you want to set. |
| enemy_0 | Real(Object) | The enemy object of enemy slot 0. |
| enemy_1 | Real(Object) | The enemy object of enemy slot 1. |
| enemy_2 | Real(Object) | The enemy object of enemy slot 2. |
| menu_dialog | String | The Flavor text. |
| bgm* | Real(Sound) | The background music plays when the battle starts. |
| flee_enabled* | Boolean | Whether to show the "\* Flee" button in the mercy menu. |
| pause_bgm* | Boolean | Whether to pause the background music when the battle starts. |
| quick* | Boolean | Whether to show the encounter animation quickly. |
| soul_x* | Real | The target x position of the encounter animation soul. |
| soul_y* | Real | The target y position of the encounter animation soul. |

## Returns
Boolean

## Example
```gml
Encounter_Set(1,-1,battle_enemy_dummy,-1,"* Dummy blocked the way!",bgm_battle,false,true,true,0,0);
```
Set the encounter data of the encounter id **1**.

The first and the third enemy is empty, the second one is **battle_enemy_dummy**.

The flavor text is **"\* Dummy blocked the way!"**.

The background music is **bgm_battle_pre**.

The "\* Flee" button in the mercy menu is **not shown**.

The encounter animation is **quick**.

The target position of the encounter animation soul is **the left top corner**.