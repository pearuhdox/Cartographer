execute if entity @s[nbt={Warmup:0}] run function cartographer_custom_enchantments:enchant_effects/evocation/afflict
execute if entity @s[nbt={Warmup:-10}] run function cartographer_custom_enchantments:enchant_effects/evocation/afflict_kb

execute if score @s ca.lifetime matches 100.. run kill @s
scoreboard players add @s ca.lifetime 1