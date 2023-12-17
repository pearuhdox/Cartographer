execute if score $frostbite ca.var matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $frostbite ca.var matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $frostbite ca.var matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $frostbite ca.var matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $frostbite ca.var matches 5 run scoreboard players set @s ca.frost_tier 5

execute if score $frostbite ca.var matches 1.. run scoreboard players set @s ca.frost_time 81

#Debug Message
function #minecraft:cartographer/events/enchants_mob_hit/melee/frostbite