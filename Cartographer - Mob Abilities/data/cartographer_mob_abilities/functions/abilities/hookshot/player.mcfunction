tag @s add ability_tagged
tag @s add hooked

scoreboard players set @s ca.hooked 41
scoreboard players set $hook_check ca.hooked 41

execute if score $fast_drag ca.mob_var matches 1.. run tag @s add ca.faster_hook_drag