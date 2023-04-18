execute on target run tag @s add ca.stealth_target
scoreboard players set $target_stealth ca.status_var 0

execute on target store result score $stealth_lvl ca.status_var run data get entity @s ActiveEffects[{Id:14}].Amplifier

execute unless entity @s[tag=ca.boss] if score $stealth_lvl ca.status_var matches 1 unless entity @a[tag=ca.stealth_target,distance=..8] on target if entity @s[predicate=cartographer_custom_statuses:is_stealthed] run scoreboard players set $target_stealth ca.status_var 1
execute unless entity @s[tag=ca.boss] if score $stealth_lvl ca.status_var matches 2 unless entity @a[tag=ca.stealth_target,distance=..6] on target if entity @s[predicate=cartographer_custom_statuses:is_stealthed] run scoreboard players set $target_stealth ca.status_var 1
execute unless entity @s[tag=ca.boss] if score $stealth_lvl ca.status_var matches 3 unless entity @a[tag=ca.stealth_target,distance=..4] on target if entity @s[predicate=cartographer_custom_statuses:is_stealthed] run scoreboard players set $target_stealth ca.status_var 1
execute unless entity @s[tag=ca.boss] if score $stealth_lvl ca.status_var matches 4 unless entity @a[tag=ca.stealth_target,distance=..2] on target if entity @s[predicate=cartographer_custom_statuses:is_stealthed] run scoreboard players set $target_stealth ca.status_var 1

execute if score $target_stealth ca.status_var matches 1.. run data modify entity @s ActiveEffects append value {Id:15,Duration:10,Amplifier:0b}

execute on target run tag @s remove ca.stealth_target