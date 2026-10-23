# External event rolls

Added in 0.10.0. Since 0.10.1, NaN or infinite weights are rejected, `wickeddevices` is reserved, and taking over another plugin's id logs a warning.

Other mods can add a weighted bucket to the event roll that runs for chests, doors, bodies, the Stones of Barenziah, and `DCurses_DoEvent` with no argument. Devious Curses still decides whether any event fires. A registered event only competes with the built-in curse weights, on the same 0 to 500 scale. The DLL clamps a weight at 10000.

Registrations are not saved. The list is cleared on every load and on a new game, so register again each time. A weight of `0` or less removes the event. A weight that is NaN or infinite is rejected with a warning and changes nothing. A weight above 10000 is clamped to 10000 with a warning. Sending the same id again replaces its weight and display name. It does not add a second bucket.

Ids are case-insensitive. Letters, numbers, `_`, and `-` only, up to 64 characters. Add an optional display name after `~`, up to 80 characters. The whole string is lowercased, so the display name is shown in lower case. These ids are reserved: `bondage`, `oppressive`, `oppresive`, `contraption`, `tattoo`, `mark`, `lewdmark`, `simpleslavery`, `wicked`, `wickeddevice`, `wickeddevices`, `abadon`, `abadonplug`, `abadonset`, `abadonwarrior`, `abadonscout`, `abadonwitch`, `external`. An invalid or reserved id is rejected with a warning in the log.

## Register

Register when your quest starts, and again on reload. `RegisterForModEvent` does not survive a save load. Devious Curses also sends `DCurses_RequestEvents` once on reload. The same id replaces its weight, so answering both is safe. This needs the recompiled `DCurses_MCM.psc` from this fork. It is not sent on a new game, so also register in `OnInit`.

The quest script extends `SKI_QuestBase`, with `SKI_PlayerLoadGameAlias` on its player alias, so `OnGameReload` runs on every load.

```papyrus
Scriptname MyMod_DCBridge extends SKI_QuestBase

float Property EventWeight = 25.0 Auto

Event OnInit()
    RegisterListeners()
    SendModEvent("DCurses_RegisterEvent", "MyCurse~My Curse", EventWeight)
EndEvent

Event OnGameReload()
    RegisterListeners()
    SendModEvent("DCurses_RegisterEvent", "MyCurse~My Curse", EventWeight)
EndEvent

Event OnDCRequestEvents(string eventName, string strArg, float numArg, Form sender)
    SendModEvent("DCurses_RegisterEvent", "MyCurse~My Curse", EventWeight)
EndEvent

Function RegisterListeners()
    RegisterForModEvent("DCurses_RequestEvents", "OnDCRequestEvents")
    RegisterForModEvent("DCurses_RunExternalEvent", "OnDCRunExternal")
EndFunction
```

`DCurses_UnregisterEvent` with the same id removes it. A weight of `0` or less does the same.

Devious Curses notes which plugin sent the register event (the plugin of the form that called `SendModEvent`). If a different plugin later registers the same id, the log warns `External event '<id>' from <new> replaces the one registered by <old>.` The new registration still replaces the old one, so pick an id unlikely to clash, for example one with your mod's prefix. Unregistering does not check the owner.

The mod events on this page are the supported interface.

## Run

When the bucket is picked, it counts as the roll, even if no mod reacts. Devious Curses does not fall back to another event. `DCurses_RunExternalEvent` is sent to every listener, so ignore an id that is not yours.

```papyrus
Event OnDCRunExternal(String eventId, String containerName, Bool isBoss, Form akActor)
    If eventId != "mycurse"
        Return
    EndIf
    ; containerName is the chest, door, body, or stone name, or "" for DCurses_DoEvent. akActor is the player.
    ; isBoss is true for a boss or dragon body.
EndEvent
```

`DCurses_EventTriggered` is also sent, as `Event OnDCTriggered(String eventName, String eventSource, Form akActor, String otherEventData)`. `eventName` is the id, `eventSource` is the container name, `akActor` is the player, and `otherEventData` is `External`.

## Confirmation

The log records `Registered external event '<id>' weight N (<plugin>).` the first time an id is seen after a load, and `Updated external event '<id>' weight N (<plugin>).` when it is sent again. It also logs `Unregistered external event`, `Cleared external events.` on each load, `Ran external event <id> (<name>) from '<container>'` when the bucket is picked, and a warning for a rejected id, a NaN or infinite weight, a clamped weight, or an id taken over from another plugin. There is no on-screen notice.

The Devious Curses MCM has an External Events page. It lists each registered display name, id, and weight, or `None registered`. It does not edit the weight. The mod that registered the event owns that.

## Suspend

`dhlp-Suspend` does not stop the roll. Built-in and external buckets both still run while it is set.
