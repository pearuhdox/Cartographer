execute if score $fb ca.frostbite matches 1.. run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal
execute if score $fb ca.frostbite matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $fb ca.frostbite matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $fb ca.frostbite matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $fb ca.frostbite matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $fb ca.frostbite matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $fb ca.frostbite matches 5 run scoreboard players set @s ca.frost_tier 5
