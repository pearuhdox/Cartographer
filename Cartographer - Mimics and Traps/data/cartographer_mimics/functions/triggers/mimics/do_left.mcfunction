scoreboard players set $creative_player ca.mimic_var 0
execute on attacker if entity @s[gamemode=creative] run scoreboard players set $creative_player ca.mimic_var 1

execute if score $creative_player ca.mimic_var matches 1.. run function cartographer_mimics:mimic/destroy
execute unless score $creative_player ca.mimic_var matches 1.. positioned ~ ~0.25 ~ run function cartographer_mimics:mimic/summon_damaged

data remove entity @s attack