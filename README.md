# Diablo 2 hotkey supplement

Author: Andrew Closs

## Overview
This is macro for  [AutoHotKey](https://www.autohotkey.com/)  that makes the Diablo II skill casting system play more like modern ARPGS.  **This does not inject into the game instance or alter game files, it only interacts with your keyboard.**

Normally in Diablo II every skill must be swapped to the active spell slot and then casted via mouse click. This cuts user input by half through binding swapping and casting to one input, and (as desired) also handling weapon swaps with that one input (e.g. swapping weapons, casting Battle Orders, swapping back).

Additionally Diablo II lacks quality of life features to alert you when buffs end or skills complete their cooldown, this provides an alert system.

## Features

-   immediately casts the skill at the cursors location on button press
-  minimize input to 1 button press to: swap weapons, cast oskills (or for +skills when buffing) and swap back
-   plays sound notifications to track cooldowns and durations
-   the skill bound to right-click remains unchanged when casting other skills, allowing for a default right-click skill
    
Example use cases (your actions are in square brackets):

> *[Left-click]* to cast Blessed Hammer, Press *[W]* to cast Teleport (and automatically swap back to Concentration), *[left-click]* to continue casting Blessed Hammer.
> 
> *[Right-click]* to cast Blizzard, Press *[A]* to swap weapons, cast Battle Orders (and to notify you when the buff ends) and swap weapons back, *[right-click]* to continue casting Blizzard.

## Configuration

Previously for personal use to reduce hand strain, I've made some changes that allows anyone to customize it to their preference. The available sounds packaged with it are from Mortal Kombat Arcade games.

By default, the macro swaps your weapon before and after casting on the buttons [A] and [S]. This is for oskills (like battle orders) or +skills when buffing. These bindings can be adjusted with rudimentary knowledge of coding through replacing the sections for each button.

The notification delay and sounds for each button can be configured through editing two arrays at the top of the file, if you do not want an alert for a specific button exclude it:
> `keyDelays := { "W" : 2000 ; 2 seconds`
> `, "E" : 18000 ; 18 seconds`
> `, "A" : 0 } ; immediately`
> `soundMaps := { "W" : mk_toasty`
> `, "E" : mk_testyourmight`
> `, "A" : mk_playerselect }`

### Control scheme requirements:

1.  keys [QWERASDF] must be unbound which means moving them (e.g. quest log) to other available keys
2.  skills must remain bound as [F1-F8]
3.  default right-click skill is [F9]
4.  weapon swap is [F10]

### Other requirements


1. run .AHK file as administrator
