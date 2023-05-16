scoreboard players set @s ca.shielding_time -1

effect give @s absorption infinite 0 true

tag @s add ca.has_shield

playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.5 2

particle minecraft:glow ~ ~0.4 ~ 0.2 0 0.2 0.1 10 normal

function #minecraft:cartographer/events/enchantments/passive/shielding