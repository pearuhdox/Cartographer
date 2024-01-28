execute unless predicate cartographer_core:has_absorption run scoreboard players set $duration ca.abs_handler 10

#scoreboard players set $cap ca.abs_handler 6
#scoreboard players operation $cap ca.abs_handler *= @s ca.satiation

execute store result score $cap ca.abs_handler run attribute @s minecraft:generic.max_health get
scoreboard players operation $amount ca.abs_handler = @s ca.satiation

function cartographer_core:helper/abs_handler/add