# ZuttoVPG Design
Note that this document is a WIP.

## Overview
Immediately after registering, the user must create a player character. There will be several options for both their race and their initial job. Each race can have different job options available.

Every player character starts out with a plot of land upon which is built a small house. This is the home base for the player, containing both crafting benches / upgrades and valuable resources for harvesting.

The gameplay revolves around upgrading their to increase the number and types of pets they can have. The pets can, in turn, help the player create a bigger & better home. The resources generated from the player's home will fuel the combat system by providing materials to craft items/equipment.

The goal of the game [[@TODO: *is to complete collections by ascending through tiers of crafting/pets/base structures. Completing collections will reward the players with things like rare pets, rare pet skins, large quantities of crafting materials, or the ability to craft more advanced things.*]]

To drive player engagement, the player will need to log in regularly to gather the resources (primary crafting materials) that have accumulated.  

The game is intended to be a cross between an incremental game like Cookie Clicker, a classic pet game, and a story-driven RPG.

## Player Character
The player character has a number of attributes:

- Race
- Jobs with levels
	- Active job
- NPC faction affiliation(s) and reputation

No aspects of the player character's progression should depend on RNG. The player character is the user's avatar in the game; they only have one, and progressing it will be crucial to unlocking other gameplay systems. Nobody should ever be stuck hoping to roll a certain job trait in order to be 'optimal'. RNG should be used in other systems.

Further, no character progression decisions should be permanently fixed in stone. The player only gets one character, and any 'bad' decisions they made before learning the game should be repairable without creating a brand-new account.

[[@TODO *I am not sure if stats are a good idea for the player character. I don't imagine stats will change all that much over time, and if they do, they'd only be going up. If we need stats on the PCs, I think they should come 100% from equipment and not be an inherent aspect of the player character.*]]

### Job System
The job system is modeled on games like Final Fantasy XIV's -- a single player character can unlock all available classes, but they are primarily limited to one active class.

This prevents players from ever feeling like their initial class choice was bad, or that they will never be able to play a class-restricted quest, or anything of that nature. The entire game is always open to the player.

Each job is progressed independently, and some jobs may require the player character to have already mastered other jobs.

Swapping the active class may incur a cooldown.

| Job               | Skills / Abilities  | Prereqs            |
|:----------------- |:--------------------|:-------------------|
| Hunter            | Hunter's Mark, increased chance to find foraged items | None |
| Blacksmith        | Extra roll when crafting metal items | None |
| Armoursmith       | Uses half the materials to craft armour | Blacksmith L5 |
| Psychic           | Mind Crush          | PC is $psychic race |

Jobs level up individually, and only when they are the active job.

The power level between different jobs should be kept somewhat similar. 'Advanced' jobs, or jobs that depend on maxing out other jobs, should offer alternative gameplay options instead of straight-up power boosts.

### Affiliation & Reputation
Players can be liked/disliked by NPC factions. Some factions can be joined by the player.

- group factions so they're mutually exclusive

## Pets
Despite drawing on incremental games, pets are _not_ merely workers. Each pet will have a name, equipment, skills, and potentially a skin.

The number of pets actively kept on the player's base should be kept fairly small so that each pet has impact and feels important.

### Pet Types
- align to the gathering stuff??
- advanced types??

### Cold Storage
Pets can be kept in storage. This makes any gathering/crafting bonuses inactive.

Inactive pets may be consumed to create new pets.

## Equipment
Both characters and pets can have equipment.

## Skills
Skills will affect resource gathering, crafting, or be an active combat skill.

For pets, skills will be randomly assigned from a pool of possible skills when the pet is created. Jobs will have a static list of skills.

Skill bonuses should apply only when the pet is an active member of the base.

### Gathering Skills
If a pet with a gathering skill is destroyed or stored, its skill bonus should only apply to the uncollected resources from periods that it was active (ie you stored 3 days but swapped the pet out 1.5 days in; 1.5days should have its bonus applied).

| Skill             | Effect              | %       | Rarity   |
| ----------------- |:-------------------:| -------:| --------:|
| Miner             | Harvest X% more ore | 5 - 10  | Common   |
| Farmer            | Harvest X% more from fields | 5 - 10  | Common |
| Eager             | Harvest X% more often | 1 - 5 | Uncommon |
| Diamond in the Rough | Chance to find rare materials | 20 - 50 | Rare |
| Mountaineer       | Allows foraging in the mt | 1 - 1 | Rare |
| Fisher            | Allows fishing      | 1 - 1   | Rare |

### Crafting Skills
Crafting skills may increase the chances of getting a rare result or multiply the output from a craft.

[[@TODO - flesh it out]]

### Combat Skills
[[@TODO - flesh it out]]

## The Base
## Gathering Resources
Gathering resources once an hour is how players can build their base up, participate in the economy, and find rare materials/events.

In order to not be too punishing, a player should be able to build up their gathering for five days before they reach a cap and begin losing resources. This is to strike a balance between driving engagement and being too 'needy'.

| Resource  | Class         | Rarity   | Tier   |
| --------- |:-------------:| --------:| ------:|
| Bronze    | Metal         | Common   |      1 |
| Grain     | Food          | Common   |      1 |
| Water     | Liquid        | Common   |      1 |
| ???       | Science       | Common   |      1 |
| Iron      | Metal         | Common   |      2 |
| Kale      | Food          | Common   |      2 |
|           |               |          |        |
|           |               |          |        |
|           |               |          |        |
|           |               |          |        |
|           |               |          |        |

### Unique Gathering Sources
In addition to the basic harvesting available to all players, certain pet skills might enable harvesting from other sources. For example, a Mountaineer pet would enable the player to send the pet off to find berries or everfrost chips.

These sources will only be available if the pet is active. When multiple pets with these skills are active, the effect should stack -- multiple harvest rolls should be made.

## Crafting

## Economy
Players can sell items of uncommon and above rarity to each other.

### Common Restriction
The restriction on trading in common material is to preserve the time gating crucial to an incremental game. This inhibits people from signing up alt accounts in order to channel the common resources of a dozen alts to one main.

There will be one exception to this rule: a common event will allow players to unlock a crafting recipe that packages up a large amount of common materials once per `period`.

These packaged common materials can be sold and broken down by other players. This allows a rich player to help a friend out. New players may opt to sell their basic resources to fund purchases of necessary rare items, mitigating bad streaks of RNG.

### Shops
- player shops

## Collections
gw2 style, get it once & you get credit

- unlock pets
- unlock recipes

## Quests
[[@TODO - flesh out]]
