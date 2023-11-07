scoreboard players set $player_owned ca.ench_var 0
execute on origin if entity @s[type=player] run scoreboard players set $player_owned ca.ench_var 1

execute if score $player_owned ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/branch/set_custom_arrow