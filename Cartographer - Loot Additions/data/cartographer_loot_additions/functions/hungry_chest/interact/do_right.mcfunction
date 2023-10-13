execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chain.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 0.5
execute on vehicle if score @s ca.locked_stage matches 1..2 run playsound minecraft:block.chest.close player @a[distance=..16] ~ ~ ~ 1 0.5

execute on vehicle if score @s ca.hunger_count matches 1.. run function cartographer_loot_additions:hungry_chest/charge
#execute on vehicle unless score @s ca.hunger_count matches 1.. run function cartographer_loot_additions:hungry_chest/open

data remove entity @s interaction