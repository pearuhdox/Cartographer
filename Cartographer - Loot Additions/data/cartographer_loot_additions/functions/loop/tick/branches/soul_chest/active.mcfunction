execute if entity @a[distance=..16,scores={ca.get_soul=1..}] run function cartographer_loot_additions:loop/tick/branches/soul_chest/add_soul
execute if score @s ca.soul_count matches 0 run function cartographer_loot_additions:loop/tick/branches/soul_chest/unlock

particle minecraft:sculk_charge 0 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 normal

#haha fuk u reknrod
data modify block ~ ~-1 ~ TransferCooldown set value 32767