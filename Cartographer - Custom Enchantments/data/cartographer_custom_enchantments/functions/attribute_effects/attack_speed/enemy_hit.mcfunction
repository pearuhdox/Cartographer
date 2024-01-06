damage @s 0.001 cartographer_custom_enchantments:enchant_damage_bypass

execute store result score $kbr ca.allow_fast_attack run attribute @s minecraft:generic.knockback_resistance get 100

execute unless score $kbr ca.allow_fast_attack matches 20.. unless score @s ca.allow_fast_attack matches 1.. unless block ~ ~-0.1 ~ #cartographer_core:can_raycast run scoreboard players set @s co_y 2
execute unless score $kbr ca.allow_fast_attack matches 20.. unless score @s ca.allow_fast_attack matches 1.. unless block ~ ~-0.1 ~ #cartographer_core:can_raycast run scoreboard players set @s co_send -3
execute unless score $kbr ca.allow_fast_attack matches 20.. unless score @s ca.allow_fast_attack matches 1.. run function motion:motion/push

execute unless score @s ca.allow_fast_attack matches 1.. run scoreboard players set @s ca.allow_fast_attack 7