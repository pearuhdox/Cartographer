execute if score $singe ca.var matches 1 if entity @s[type=#bb:fiery] run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 2 if entity @s[type=#bb:fiery] run damage @s 1.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 3 if entity @s[type=#bb:fiery] run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 4 if entity @s[type=#bb:fiery] run damage @s 2.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 5 if entity @s[type=#bb:fiery] run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 6 if entity @s[type=#bb:fiery] run damage @s 3.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 7 if entity @s[type=#bb:fiery] run damage @s 4 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 8 if entity @s[type=#bb:fiery] run damage @s 4.5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 9 if entity @s[type=#bb:fiery] run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass
execute if score $singe ca.var matches 10.. if entity @s[type=#bb:fiery] run damage @s 5.5 cartographer_custom_enchantments:enchant_damage_bypass


#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Singe (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]