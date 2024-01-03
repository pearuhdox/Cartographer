scoreboard players set $attacker_find ca.var 0
execute on origin if score @s ca.player_id = $attacker_id ca.var run scoreboard players set $attacker_find ca.var 1

execute unless score $attacker_found ca.var matches 1.. if score $attacker_find ca.var matches 1.. if entity @s[type=#bb:arrow,tag=!ca.ranged_damage_trident_replace] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch
execute unless score $attacker_found ca.var matches 1.. if score $attacker_find ca.var matches 1.. if entity @s[type=trident] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch_trident
execute unless score $attacker_found ca.var matches 1.. if score $attacker_find ca.var matches 1.. if entity @s[type=snowball,tag=ca.ranged_damage_trident_replace] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch_fake_trident
execute unless score $attacker_found ca.var matches 1.. if score $attacker_find ca.var matches 1.. if entity @s[type=snowball,tag=!ca.ranged_damage_trident_replace] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch_snowball