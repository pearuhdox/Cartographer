scoreboard players set @s ca.hooked 101
scoreboard players set $hook_check ca.hooked 101
scoreboard players operation @s ca.damage_queue = $damage ca.ability_dmg

execute if score $fast_drag ca.mob_var matches 1.. run tag @s add ca.faster_hook_drag