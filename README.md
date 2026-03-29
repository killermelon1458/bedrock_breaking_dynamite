# Bedrock Breaking Dynamite Datapack

## Overview

This project adds a custom TNT variant called **Dynamite** to Minecraft. Dynamite behaves like normal TNT but includes additional logic to break otherwise unbreakable blocks under controlled conditions.

The project currently contains two versions:

* **v1** – Original implementation (simple, aggressive behavior)
* **v2** – Refactored implementation (controlled, configurable, safer)

Both versions are included for reference and comparison.

---

## Supported Versions

* Designed for: **Minecraft Java Edition 1.21.11**
* Likely compatible with: **1.21.x (with minor or no changes)**
* Not tested on earlier versions

As of this commit, **both v1 and v2 have only been tested on 1.21.11**.

---

## Crafting Recipe (Both Versions)

```
T I T
O R O
T I T
```

* T = TNT
* I = Iron Block
* O = Obsidian
* R = Redstone Block

Produces a custom TNT item named **Dynamite**.

---

# Version 1 (v1)

## Behavior

v1 uses a very simple approach:

* When Dynamite explodes, it runs a command to delete blocks
* It **does not check block type**
* It **does not check location or dimension**

### Block Breaking Logic

```
fill ~0 ~-1 ~0 ~0 ~1 ~0 air
```

This removes:

* Block below TNT
* Block at TNT position
* Block above TNT

### Result

* Breaks **any block** in those positions
* Includes:

  * Bedrock
  * End portal frames
  * Barriers
  * Command blocks
  * Literally anything

### Problems with v1

* No safety checks
* Can break critical or admin-only blocks
* No way to disable per dimension
* No protected regions
* Not suitable for multiplayer or long-term worlds

---

# Version 2 (v2)

v2 is a complete redesign focused on **control, safety, and configurability**.

## Key Improvements

### 1. Per-Block Checks (Above / Here / Below)

Instead of one `fill` command, v2 checks each block individually:

* Block below
* Block at TNT position
* Block above

Each block is handled independently, allowing fine control.

---

### 2. Protected Block Blacklist

v2 introduces a blacklist of blocks that **cannot be broken**:

* `minecraft:end_portal`
* `minecraft:end_portal_frame`
* `minecraft:barrier`
* `minecraft:command_block`
* `minecraft:chain_command_block`
* `minecraft:repeating_command_block`
* `minecraft:structure_block`
* `minecraft:jigsaw`
* `minecraft:structure_void`
* `minecraft:light`
* `minecraft:reinforced_deepslate`

Everything else is breakable by default.

### Behavior

* Normal blocks → break
* Protected blocks → never break

This preserves gameplay consistency while preventing catastrophic damage.

---

### 3. Per-Dimension Feature Toggles

Each dimension can independently enable or disable Dynamite features.

Dimensions supported:

* Overworld
* Nether
* End

Each dimension has toggles for:

* Breaking above
* Breaking at TNT position
* Breaking below

Example commands:

```
/function dynamite:toggle/overworld/all_on
/function dynamite:toggle/end/all_off
```

### Result

* You can disable bedrock breaking in the End
* Keep it enabled in the Nether
* Fully customizable behavior

---

### 4. Protected Region System (Spawn Protection Replacement)

v2 introduces a **custom protected region system** using two points.

#### Setup Commands

```
/function dynamite:protect/set_pos1
/function dynamite:protect/set_pos2
/function dynamite:protect/show
/function dynamite:protect/clear
```

#### How it works

* Define two corners of a cuboid
* Region is stored per dimension
* Dynamite logic is disabled inside this region

### Result

* Prevents Dynamite from modifying blocks in spawn or protected areas
* Works independently of vanilla spawn protection

---

### 5. Safer Execution Model

v2 avoids destructive blanket operations and instead uses:

* Conditional checks (`execute if/unless block`)
* Block tags for protection
* Dimension-aware execution

This significantly reduces unintended behavior.

---

## Behavior Summary (v2)

When Dynamite explodes:

1. Check if feature is enabled in current dimension
2. Check if TNT is inside a protected region
3. For each position (below, here, above):

   * If block is NOT protected → delete it
   * If block is protected → leave it
4. Explosion proceeds normally

---

## Known Limitations

* Vanilla explosion damage is NOT suppressed inside protected regions
* Breaking unlit Dynamite still drops normal TNT
* Spawn protection is custom (not tied to server.properties)

---

## File Structure

```
v1/
  Dynamite_Datapack_v1_1.21.11/
  Dynamite_Datapack_v1_1.21.11.zip

v2/
  Dynamite_Datapack_v2_1.21.11/
  Dynamite_Datapack_v2_1.21.11.zip
```

---

## Recommendation

Use **v2** unless you specifically want:

* unrestricted block breaking
* minimal logic
* no safeguards

v2 is strictly superior for real-world use.

---

## Future Improvements (Ideas)

* Preserve Dynamite item when broken
* Configurable explosion strength per dimension
* Multiple protected regions
* Player permission integration (LuckPerms)

---

## Author Notes

This project evolved from a simple “break bedrock TNT” idea into a more robust system with:

* controlled destruction
* configurable behavior
* multiplayer safety in mind

v1 is kept for reference, but v2 is the intended direction moving forward.
