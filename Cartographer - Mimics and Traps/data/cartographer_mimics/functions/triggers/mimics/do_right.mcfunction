scoreboard players set $creative_player ca.mimic_var 0

scoreboard players set $undetected ca.mimic_var 0

execute on target if entity @s[gamemode=creative] run scoreboard players set $creative_player ca.mimic_var 1

execute on target if entity @s[predicate=cartographer_mimics:is_invisible] run scoreboard players set $undetected ca.mimic_var 1
execute on target if entity @s[predicate=cartographer_mimics:mimic_disguised] run scoreboard players set $undetected ca.mimic_var 1

execute if entity @s[tag=ca.revealed] run scoreboard players set $undetected ca.mimic_var 0

#execute if score $creative_player ca.mimic_var matches 1.. run say creative
execute unless score $creative_player ca.mimic_var matches 1.. unless score $undetected ca.mimic_var matches 1.. positioned ~ ~0.25 ~ run function cartographer_mimics:mimic/summon
execute unless score $creative_player ca.mimic_var matches 1.. if score $undetected ca.mimic_var matches 1.. positioned ~ ~ ~ run function cartographer_mimics:mimic/reveal


data remove entity @s interaction