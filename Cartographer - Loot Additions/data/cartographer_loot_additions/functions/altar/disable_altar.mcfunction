execute unless entity @s[tag=cache] run data modify entity @s Fixed set value 0b
setblock ~ ~ ~ air destroy

execute if entity @s

particle minecraft:explosion ~ ~0.25 ~ 0 0 0 0 1 force
particle minecraft:sculk_charge_pop ~ ~0.25 ~ 0.5 0.25 0.5 0.05 50 normal

playsound minecraft:block.note_block.chime block @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:entity.evoker.prepare_attack block @a[distance=..16] ~ ~ ~ 0.5 1.75

tag @s add disabled

execute if entity @s[tag=cache] run function cartographer_loot_additions:altar/place_cache_head