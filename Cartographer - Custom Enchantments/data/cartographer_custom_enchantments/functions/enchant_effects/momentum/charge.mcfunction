execute if score @s ca.momentum_charge matches 10..1999 unless block ~ ~-0.2 ~ #cartographer_core:can_raycast run scoreboard players remove @s ca.momentum_charge 10

#Add while jumping
execute if score @s ca.momentum_charge matches ..3000 if block ~ ~-0.2 ~ #cartographer_core:can_raycast if predicate cartographer_custom_enchantments:is_sprinting run scoreboard players add @s ca.momentum_charge 25

execute if score @s ca.momentum_charge matches 3001.. run scoreboard players set @s ca.momentum_charge 3000

execute if score @s ca.momentum_charge matches 1.. run function cartographer_custom_enchantments:enchant_effects/momentum/attributes