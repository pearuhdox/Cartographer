execute as @s at @s anchored eyes run particle minecraft:poof ^ ^ ^1 0.5 0.5 0.5 0.06 10 normal

execute as @s at @s anchored eyes if entity @s[type=slime] run particle minecraft:block minecraft:slime_block ^ ^ ^1 0.5 0.5 0.5 0.06 20 normal
execute as @s at @s anchored eyes if entity @s[type=magma_cube] run particle minecraft:block minecraft:magma_block ^ ^ ^1 0.5 0.5 0.5 0.06 20 normal

execute as @s at @s anchored eyes if entity @s[type=slime] run playsound minecraft:block.honey_block.step hostile @a[distance=..16] ~ ~ ~ 1 0.75
execute as @s at @s anchored eyes if entity @s[type=magma_cube] run playsound minecraft:block.honey_block.step hostile @a[distance=..16] ~ ~ ~ 1 0.75

execute as @s at @s anchored eyes if entity @s[type=phantom] run particle minecraft:witch ^ ^ ^1 0.5 0.5 0.5 0.06 5 normal

scoreboard players add @s ca.size_changed_stacks 1
function cartographer_mob_abilities:passive/size/shrink/apply_shrink_stat_debuff