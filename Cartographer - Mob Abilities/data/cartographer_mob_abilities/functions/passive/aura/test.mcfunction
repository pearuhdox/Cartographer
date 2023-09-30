scoreboard players set $aura_target ca.mob_var 0
execute on target if entity @s[type=player] run scoreboard players set $aura_target ca.mob_var 1

execute if score $aura_target ca.mob_var matches 1.. run function cartographer_mob_abilities:passive/aura/get_data