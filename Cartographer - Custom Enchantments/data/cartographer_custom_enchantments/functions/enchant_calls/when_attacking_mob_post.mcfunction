tag @s remove ca.attacked_mob

execute if score $trigger ca.allow_fast_attack matches 1.. run function cartographer_custom_enchantments:attribute_effects/attack_speed/enemy_hit

execute if score $was_ranged_attack ca.var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_check

scoreboard players set $was_ranged_attack ca.var 0