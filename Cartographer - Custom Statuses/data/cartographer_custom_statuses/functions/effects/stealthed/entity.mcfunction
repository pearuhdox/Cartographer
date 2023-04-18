execute on target run tag @s add ca.stealth_target
scoreboard players set $target_stealth ca.status_var 0

execute unless entity @s[tag=ca.boss] unless entity @a[ca.stealth_target,distance=..2] on target if entity @s[predicate=cartographer_custom_statuses:is_stealthed] run scoreboard players set $target_stealth ca.status_var 1
execute if score $target_stealth ca.status_var matches 1.. run data modify entity @s ActiveEffects append value {Id:15,Duration:5,Amplifier:0b}

execute on target run tag @s remove ca.stealth_target