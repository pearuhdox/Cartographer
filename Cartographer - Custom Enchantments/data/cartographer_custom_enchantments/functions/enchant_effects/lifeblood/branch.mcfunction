execute unless predicate cartographer_core:has_absorption run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 1.2

execute unless predicate cartographer_core:has_absorption run scoreboard players set $duration ca.abs_handler 12
execute if predicate cartographer_core:has_absorption run scoreboard players set $duration ca.abs_handler 3

execute store result score $cap ca.abs_handler run attribute @s minecraft:generic.max_health get
scoreboard players operation $amount ca.abs_handler = @s ca.lifeblood

function cartographer_core:helper/abs_handler/add