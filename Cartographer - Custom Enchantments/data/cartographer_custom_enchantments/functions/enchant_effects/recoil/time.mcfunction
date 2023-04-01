scoreboard players add @s ca.recoil_time 1

execute if score @s ca.recoil_time matches 2 run scoreboard players remove @s ca.recoil_count 1

execute if score @s ca.recoil_time matches 2 at @s run function cartographer_custom_enchantments:enchant_effects/recoil/knockback

execute if score @s ca.recoil_time matches 4 run scoreboard players set @s ca.recoil_time 0

#execute if score @s ca.recoil_time matches 11 run scoreboard players remove @s ca.recoil_count 1
#execute if score @s ca.recoil_time matches 11 anchored eyes run particle smoke ^ ^ ^1 0.35 0.35 0.35 0 10 normal

#execute if score @s ca.recoil_time matches 36 run scoreboard players set @s ca.recoil_time 0