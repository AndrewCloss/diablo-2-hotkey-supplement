# Diablo 2 hotkey supplement

Author: Andrew Closs

Version: 1.1

## Overview
This is macro for  [AutoHotKey](https://www.autohotkey.com/)  that makes the Diablo II skill casting system play more like modern ARPGS.  **This does not inject into the game instance or alter game files, it only interacts with your keyboard.**

Normally in Diablo II every skill must be swapped to the active spell slot and then casted via mouse click. This cuts user input by at least half through binding swapping and casting to one input, and (as desired) also handling weapon swaps with that one input (e.g. swapping weapons, casting Battle Orders, swapping back).

Additionally Diablo II lacks quality of life features to alert you when buffs end or skills complete their cooldown, this provides an alert system.

## Features

Press **one button** (e.g. [Q]) to do **any** of the following:
1. cast a skill on the cursor's location while having the skill binded to your default right-click remain unchanged (allows for a default right-click).
2. make your left-click skill function as it would on right-click (the previous example), where your caster goes stationary and casts on your cursor's location.  
 e.g. Good for combining skills with stances, like Blessed Hammer with Concentration
3. make your character automatically move to and attack everything under the cursor with left-click while the key is held.  
 e.g. Good for single target skills like Berserk.
4. make your character swap weapons, cast the desired skill and swap back.  
 e.g. Good for using oskills like Battle Orders or buffing with extra +skills
5. play an alert to notify you when buffs end or skills complete their cooldown for any of the above features

By default, the keys [QWERASDF] all do #1. Using the templates documented in the macro, you can configure these keys to handle these alternative actions. The available sounds packaged with it are from Mortal Kombat Arcade games.
    
## Example use cases

Your actions are in square brackets:
> press [Q] to cast Blessed Hammer on left-click,  
> press [W] to cast Teleport (and automatically swap back to Concentration),  
> press [Q] to continue casting Blessed Hammer.

> [Right-click] to cast Blizzard,
> press [A] to:

> 1. swap weapons
> 2. cast Battle Orders (and to notify you when the buff ends)
> 3. swap weapons back

> [Right-click] to continue casting Blizzard.

## Configuration

Previously for personal use to reduce hand strain, I've made some changes that allows anyone to customize it to their preference.

Using the templates documented in the macro, you can configure the keys [QWERASDF] to handle additional actions that includes alerting you when buffs end or skills complete their cooldown. The available sounds packaged with it are from Mortal Kombat Arcade games.

The notification delay and sounds for each button can be configured through editing two arrays at the top of the file, if you do not want an alert for a specific button exclude it:
> `keyDelays := { "W" : 2000 ; 2 seconds`  
> `, "E" : 18000 ; 18 seconds`  
> `, "A" : 0 } ; immediately`  
> `soundMaps := { "W" : mk_toasty`  
> `, "E" : mk_testyourmight`  
> `, "A" : mk_playerselect }`  

### Control scheme requirements:

1. keys [QWERASDF] must be unbound which means moving them (e.g. quest log) to other available keys
2. skills must remain bound as [F1-F8]
3. default right-click skill to [F9]
4. default left-click skill to [F10] (optional)
5. Set weapon swap to [F11]

### Other requirements

1. run .AHK file as administrator
