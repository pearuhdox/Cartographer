execute if score @s ca.curse_regret matches 1 run damage @s 2.0 cartographer_custom_enchantments:curse_damage
execute if score @s ca.curse_regret matches 2 run damage @s 4.0 cartographer_custom_enchantments:curse_damage
execute if score @s ca.curse_regret matches 3 run damage @s 6.0 cartographer_custom_enchantments:curse_damage
execute if score @s ca.curse_regret matches 4 run damage @s 8.0 cartographer_custom_enchantments:curse_damage
execute if score @s ca.curse_regret matches 5.. run damage @s 10.0 cartographer_custom_enchantments:curse_damage



execute unless entity @s[tag=no_cdl_msg] if score @s ca.curse_regret matches 1.. run scoreboard players set @s cdl.death_id 310102
tag @s remove no_cdl_msg

execute if score @s ca.curse_regret matches 1.. run function cd:lib/player/damage/normal