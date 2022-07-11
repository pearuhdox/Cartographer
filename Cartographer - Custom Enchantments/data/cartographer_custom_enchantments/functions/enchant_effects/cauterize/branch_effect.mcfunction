particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 10 normal
particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.1 10 normal

scoreboard players set $total ca.cauter_dmg 0
scoreboard players set $total_dur ca.brittle_time 0

execute unless entity @s[type=#bb:fiery] run function cartographer_custom_enchantments:enchant_effects/cauterize/effect
execute if entity @s[type=#bb:fiery] run function cartographer_custom_enchantments:enchant_effects/cauterize/effect_fiery