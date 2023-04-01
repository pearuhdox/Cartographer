execute if entity @a[distance=..16,scores={ca.get_soul=1..}] run function cartographer_loot_additions:soul_chest/charge

execute if score @s ca.loot_timer matches 1.. run scoreboard players add @s ca.loot_timer 1
execute if score @s ca.loot_timer matches 1..40 run particle minecraft:sculk_charge 0 ~ ~0.5 ~ 0.35 0.35 0.35 0 3 normal
execute if score @s ca.loot_timer matches 51.. run function cartographer_loot_additions:soul_chest/open
