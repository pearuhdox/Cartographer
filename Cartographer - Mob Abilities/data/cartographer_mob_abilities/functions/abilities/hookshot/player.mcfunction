scoreboard players set @s ca.hooked 101
scoreboard players set $hook_check ca.hooked 101

execute if score $fast_drag ca.mob_var matches 1.. run tag @s add ca.faster_hook_drag