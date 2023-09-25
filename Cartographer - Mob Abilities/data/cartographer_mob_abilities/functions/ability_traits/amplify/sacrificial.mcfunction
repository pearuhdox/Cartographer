playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.3 2

scoreboard players add @s ca.sacrifice_stacks 2
execute if score @s ca.sacrifice_stacks matches 11.. run scoreboard players set @s ca.sacrifice_stacks 10

particle minecraft:dust 0.941 0.753 0.353 1 ~ ~1 ~ 0.5 0.5 0.5 0 15 normal