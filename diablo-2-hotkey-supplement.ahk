;  Diablo 2 Hotkey Supplement
;  Author: Andrew Closs
;  Description:
;     Automatically casts the selected skill at the cursor's location on
;     button press. Also plays sound notifications to track cooldowns and
;     durations. Effectively makes these mechanics in line with a modern ARPG.
;     -  Press one button to cast a skill on the cursors location while having
;        the skill binded to your default right-click remain unchanged, making
;        right-click function like another button
;     -  Plays a sound effect after a specified amount of time
;     e.g.  [Left-click] to cast Blessed Hammer,
;           Press [W] to cast Teleport (and auto swap back to Concentration),
;           [Left-click] to continue casting Blessed Hammer.
;     e.g.  [Right-click] to cast Blizzard,
;           Press [A] to:
;              1) swap weapons
;              2) cast Battle Orders (and to notify you when the buff ends)
;              3) swap weapons back
;           [Right-click] to continue casting Blizzard.
;  Prerequisites:
;     -  Requires AutoHotkey
;     -  Keep skill hotkeys as [F1]-[F8]
;     -  Set default right-click skill to [F9]
;     -  Set weapon swap to [F10]
;     -  Unbind QWER and ASDF (move existing functions to other keys)
;  Notes:
;     -  By default, the skills [A] and [S] swap the users weapon prior to and
;        after casting (for oskills or +skills). This can be changed as desired
;     -  [Enter] pauses and unpauses the script (for typing in chat)

;  ============================================================================
;  User customization
;  ============================================================================

;  Modify these as desired

;  Sounds supported by default (%A_ScriptDir% is this files path)
mk_toasty            = %A_ScriptDir%\Media\mk_toasty.mp3 
mk_testyourmight     = %A_ScriptDir%\Media\mk_testyourmight.mp3
mk_dundundun         = %A_ScriptDir%\Media\mk_dundundun.mp3
mk_playerselect      = %A_ScriptDir%\Media\mk_playerselect.mp3
mk_yellmortalkombat  = %A_ScriptDir%\Media\mk_yellmortalkombat.mp3
mk_teleport          = %A_ScriptDir%\Media\mk_teleport.mp3
mk_finishhim         = %A_ScriptDir%\Media\mk_finishhim.mp3
mk_flawlessvictory   = %A_ScriptDir%\Media\mk_flawlessvictory.mp3
mk_babality          = %A_ScriptDir%\Media\mk_babality.mp3
mk_animality         = %A_ScriptDir%\Media\mk_animality.mp3
mk_brutality         = %A_ScriptDir%\Media\mk_brutality.mp3

;  Optional, only if you want the skill to cast alongside a sound effect
keyDelays :=   { "W" : 2000  ; after 2 seconds
               , "E" : 18000 ; after 18 seconds
               , "A" : 0 }   ; immediately
soundMaps :=   { "W" : mk_toasty
               , "E" : mk_testyourmight
               , "A" : mk_playerselect }

;  ============================================================================
;  Initialization
;  ============================================================================

#NoEnv                     ; improves performance
SendMode Input             ; improves reliability
#IfWinActive, Diablo II    ; suspend outside of client

defaultRightClick = {F9}
defaultWeaponSwap = {F10}
hotkeyDelay       := 1     ; in milliseconds
weaponSwapDelay   := 500   ; in milliseconds

;  ============================================================================
;  QWER
;  ============================================================================

;  Press [Q], click [RMB], swap to defaultRightClick
Q::
   if ( not GetKeyState("RButton" , "P") )
      Send {F1}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("Q") && soundMaps.hasKey("Q"))
         QueueSound(keyDelays["Q"], soundMaps["Q"])
return

;  Press [W], click [RMB], swap to defaultRightClick
W::
   if ( not GetKeyState("RButton" , "P") )
      Send {F2}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("W") && soundMaps.hasKey("W"))
         QueueSound(keyDelays["W"], soundMaps["W"])
return

;  Press [E], click [RMB], swap to defaultRightClick
E::
   if ( not GetKeyState("RButton" , "P") )
      Send {F3}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("E") && soundMaps.hasKey("E"))
         QueueSound(keyDelays["E"], soundMaps["E"])
return

;  Press [R], click [RMB], swap to defaultRightClick
R::
   if ( not GetKeyState("RButton" , "P") )
      Send {F4}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("R") && soundMaps.hasKey("R"))
         QueueSound(keyDelays["R"], soundMaps["R"])
return

;  ============================================================================
;  ASDF
;  ============================================================================

;  Note: The keys [A] and [S] include a weapon swap before and after the cast,
;        adding about a half-second to the time you're locked in one place.

;  Weapon swap, Press [A], click [RMB], wait for animation, weapon swap
A::
   if ( not GetKeyState("RButton" , "P") )
      Send %defaultWeaponSwap%
      Sleep, hotkeyDelay
      Send {F5}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Sleep, weaponSwapDelay
      Send %defaultWeaponSwap%
      if (keyDelays.hasKey("A") && soundMaps.hasKey("A"))
         QueueSound(keyDelays["A"], soundMaps["A"])
return

;  Weapon swap, Press [S], click [RMB], wait for animation, weapon swap
S::
   if ( not GetKeyState("RButton" , "P") )
      Send %defaultWeaponSwap%
      Sleep, hotkeyDelay
      Send {F6}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Sleep, weaponSwapDelay
      Send %defaultWeaponSwap%
      if (keyDelays.hasKey("S") && soundMaps.hasKey("S"))
         QueueSound(keyDelays["S"], soundMaps["S"])
return

;  Press [D], click [RMB], swap to defaultRightClick
D::
   if ( not GetKeyState("RButton" , "P") )
      Send {F7}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("D") && soundMaps.hasKey("D"))
         QueueSound(keyDelays["D"], soundMaps["D"])
return

;  Press [F], click [RMB], swap to defaultRightClick
F::
   if ( not GetKeyState("RButton" , "P") )
      Send {F8}
      Sleep, hotkeyDelay
      Click down right
      Click up right
      Send %defaultRightClick%
      if (keyDelays.hasKey("F") && soundMaps.hasKey("F"))
            QueueSound(keyDelays["F"], soundMaps["F"])
    return

;  ============================================================================
;  Utility functions
;  ============================================================================

;  Suspend script (for typing in chat)
Enter::
   Suspend, Toggle
   Send {Enter}
return

;  Re-enables script in case user escapes out of text window
Escape::
   Suspend, Off
   Send {Escape}
return

QueueSound(delay, soundFile) {
   fn := Func("TriggerSound").Bind(soundFile)
   SetTimer, %fn%, -%delay%
}

TriggerSound(a) {
   SoundPlay, % a
}