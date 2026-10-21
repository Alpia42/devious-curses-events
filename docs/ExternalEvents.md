# External event rolls

Other mods can add a weighted bucket to the chest, door, and body roll. Devious Curses still decides whether any event fires. A registered event only competes with the built-in curse weights, on the same 0 to 500 scale. The DLL clamps a weight at 10000.

Registrations are not saved. The list is cleared on every load, so register again each time. Weight `0` removes the event. The same id replaces its weight. It does not add a second bucket.

Ids are case-insensitive. Letters, numbers, `_`, and `-` only, up to 64 characters. Optional display name after `~`. Built-in names (`bondage`, `oppressive`, `tattoo`, `mark`, `contraption`, `simpleslavery`, `wicked`, `abadon`, and the Abadon set names) are reserved.

## Register

Register when your quest starts, and again on reload. `RegisterForModEvent` does not survive a save load. Devious Curses also sends `DCurses_RequestEvents` once on reload. The same id replaces its weight, so answering both is safe.

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

Event OnDCRequestEvents(String reason)
    SendModEvent("DCurses_RegisterEvent", "MyCurse~My Curse", EventWeight)
EndEvent

Function RegisterListeners()
    RegisterForModEvent("DCurses_RequestEvents", "OnDCRequestEvents")
    RegisterForModEvent("DCurses_RunExternalEvent", "OnDCRunExternal")
EndFunction
```

`DCurses_UnregisterEvent` with the same id removes it. A weight of `0` does the same.

## Run

When the bucket is picked, it counts as the roll.

```papyrus
Event OnDCRunExternal(String eventId, String containerName, Bool isBoss, Form akActor)
    If eventId != "mycurse"
        Return
    EndIf
    ; containerName is the chest, door, or body name. akActor is the player.
    ; isBoss is true for a boss or dragon body.
EndEvent
```

`DCurses_EventTriggered` is also sent. `eventName` is the id, `eventSource` is the container name, `otherEventData` is `External`.

## Confirmation

The log records `Registered external event '<id>' weight N` the first time an id is seen after a load, and `Updated external event` when the same id is sent again. There is no on-screen notice.

The Devious Curses MCM has an External Events page. It lists each registered display name, id, and weight, or `None registered`. It does not edit the weight. The mod that registered the event owns that.

## Suspend

`dhlp-Suspend` does not stop the roll. Built-in and external buckets both still run while it is set.
