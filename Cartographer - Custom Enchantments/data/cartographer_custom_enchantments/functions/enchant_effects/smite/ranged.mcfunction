execute if score $smite ca.var matches 1 if entity @s[type=#bb:undead] run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 2 if entity @s[type=#bb:undead] run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 3 if entity @s[type=#bb:undead] run damage @s 7 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 4 if entity @s[type=#bb:undead] run damage @s 10 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 5.. if entity @s[type=#bb:undead] run damage @s 12 cartographer_custom_enchantments:enchant_damage_bypass


execute if score $smite ca.var matches 1 if entity @s[type=#bb:undead] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 3 if entity @s[type=#bb:undead] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $smite ca.var matches 5 if entity @s[type=#bb:undead] run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass

#Debug Message
#function #minecraft:cartographer/events/enchants_mob_hit/melee/smite