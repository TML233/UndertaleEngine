# Battle_SetState {docsify-ignore-all}

## Description
Set the battle state instantly.

!> Using this function directly may breaks the battle logic, please use [`Battle_SetNextState`](/schinese/function/Battle_SetNextState) instead.

## Syntax
```gml
Battle_SetState(state);
```

## Arguments
| Argument | Type | Description |
| :-- | :-- | :-- |
| `state` | Real([`BATTLE_STATE`](/macro/battle?id=BATTLE_STATE)) | The battle state that you want to set to. |

## Returns
Boolean

## Example
```gml
Battle_SetState(BATTLE_STATE.MENU);
```
Set the battle state to `BATTLE_STATE.MENU`.