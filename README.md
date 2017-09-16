# Zutto VPG
This repository contains the design documents for the Zutto VPG project.

If you are looking for the actual components, see [the repository list](https://github.com/ZuttoVPG).

## Project Overview
ZuttoVPG is an open-source framework for building virtual pet games. It is not a ready-made game that you can install; it is a tool for game creators.

The major features of Zutto are:

- Loot tables for use in all areas of the game
- Player character
  - Different races
  - Stats, levels
  - Progression based on quests & pets
  - Job system
    - Players pick a starting job
    - They can unlock any other job as long as they meet pre-requisites (job dependencies)
    - Jobs support crafting, resource harvesting, and/or combat
- Adopting pets
  - Species can have several skins
  - Species can be locked behind some criteria
- Pet breeding
  - Pets can inherit traits from their progenitors
  - Some traits can show visibly on the pet ('Winged' translates into wings being added to the image)
- Inventory
  - Item functionality can be extended by implementing new subclasses
- Resource harvesting
  - Passive & periodic
- Crafting recipes
  - Static output or output based on a roll table
  - Unlockable recipes
  - Discoverable recipes
- Quest system
  - Quest dependencies (must complete X & Y to unlock Z)
  - Quest preconditions (only available to X races, only available if pet > level 5, etc)
  - NPC dialogue & scenes
- Pet Combat
  - NPCs and consensual PvP
  - Player character
- Collections & achievements
- Social (forums/instant messaging)

More details about these features can be found in the [game design document](https://github.com/ZuttoVPG/zutto-docs/blob/master/Game_Design.md).

Zutto itself is built on open-source technology. See the [technical design](https://github.com/ZuttoVPG/zutto-docs/blob/master/Technical_Design.md) document for more information on that.

## Development Milestones
There will be several milestones in the development cycle.

1. Basic Systems
1. Combat
1. Beta
  - Internal API documentation
  - REST API documentation
1. v1.0
  - Examples for setting up quests
  - Ready-made dev environment VM
  - Tools for deploying to production
