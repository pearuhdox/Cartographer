function cartographer_loot_additions:loop/tick/branches/soul_chest/active

#When a survival mode player approaches the chest it locks itself
execute if entity @s[tag=!approached] if entity @a[distance=..16,gamemode=!spectator,gamemode=!creative] run function cartographer_loot_additions:loop/tick/branches/soul_chest/approached


#Remove the armor stand when chest is gone.
execute if entity @s[tag=!approached] unless block ~ ~ ~ chest run kill @s

execute if entity @s[tag=approached] unless block ~ ~ ~ chest run function cartographer_loot_additions:loop/tick/branches/soul_chest/destroy