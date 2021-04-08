execute if entity @s[nbt={Warmup:0}] run function cartographer_custom_enchantments:enchant_effects/evocation_afflict
execute if entity @s[nbt={Warmup:-10}] run function cartographer_custom_enchantments:enchant_effects/evocation_afflict_kb

execute if score @s helper_lifetime matches 100.. run kill @s
scoreboard players add @s helper_lifetime 1