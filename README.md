# Ignite
#####  A Rust Project

### Vanilla Mode
These plugins should be within the `deactivated_plugins/` directory when wanting to run Vanilla.
Simply copy these back into `plugins/` to run modded again. (Usually this is X2)
```
BetterLoot.cs
CraftingController.cs
Duelist.cs
GatherManager.cs
GroupLimits.cs
Kits.cs
QuickSmelt.cs
StackSizeController.cs
```

### CLI Arguments
```
-server.identity            # Basically local world folder name?
-server.hostname            # This is what people see in menu
-server.description         # ...a description...
-server.url                 # website or discord link
```

### Useful Commands
#### Get Oxide Version
```
oxide.version
```
#### Show Plugins
```
oxide.plugins
```

#### Reload Plugin
```
oxide.reload [plugin]
```

### GatherMate Configuration
> https://www.gameserverkings.com/knowledge-base/rust/modify-gather-rate/
```
gather.rate dispenser * 2
gather.rate pickup * 2
gather.rate quarry * 2
gather.rate survey * 2
dispenser.scale tree 2
dispenser.scale ore 2
dispenser.scale corpse 2
```


