tag @s add ca.breaker
tag @s remove ca.augmenter
tag @s add ca.orbit
tag @s add ca.sidearm_after
tag @s add ca.sh_arrow
tag @s add ca.touch
tag @s add ca.enraged

tag @s remove ca.ability_haste++
tag @s add ca.ability_haste--
tag @s add ca.ability_dmg---

effect give @s slowness 120 0

scoreboard players set @s cooldown 0

particle minecraft:angry_villager ~ ~2 ~ 0.3 0.1 0.3 0 10 normal
particle minecraft:large_smoke ~ ~1 ~ 0.4 0.1 0.4 0.1 20 normal

playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 2 1.2
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.anvil.place hostile @a[distance=..16] ~ ~ ~ 1 0.7