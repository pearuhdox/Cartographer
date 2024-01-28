execute if score @s ca.s_cleansing matches 1.. if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run tag @s add slow_cleanse
execute if score @s ca.f_cleansing matches 1.. if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tag @s add fatigue_cleanse
execute if score @s ca.w_cleansing matches 1.. if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run tag @s add weak_cleanse
execute if score @s ca.p_cleansing matches 1.. if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run tag @s add poison_cleanse
execute if score @s ca.wi_cleansing matches 1.. if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run tag @s add wither_cleanse
execute if score @s ca.fi_cleansing matches 1.. if predicate cartographer_core:is_on_fire unless predicate cartographer_core:in_lava run function cartographer_custom_enchantments:enchant_effects/cleansing/fire_check

execute if entity @s[tag=slow_cleanse] run function cartographer_custom_enchantments:enchant_effects/cleansing/slowness
execute if entity @s[tag=fatigue_cleanse] run function cartographer_custom_enchantments:enchant_effects/cleansing/fatigue
execute if entity @s[tag=weak_cleanse] run function cartographer_custom_enchantments:enchant_effects/cleansing/weakness
execute if entity @s[tag=poison_cleanse] run function cartographer_custom_enchantments:enchant_effects/cleansing/poison
execute if entity @s[tag=wither_cleanse] run function cartographer_custom_enchantments:enchant_effects/cleansing/wither
execute if entity @s[tag=fire_cleanse] at @s run function cartographer_custom_enchantments:enchant_effects/cleansing/fire

execute unless predicate cartographer_custom_enchantments:is_hungered run scoreboard players set @s ca.cleanse_stacks 0

tag @s remove poison_cleanse
tag @s remove fatigue_cleanse
tag @s remove slow_cleanse
tag @s remove weak_cleanse
tag @s remove wither_cleanse
tag @s remove fire_cleanse

execute if entity @s[tag=ca.cleanse_drain] run function cartographer_custom_enchantments:enchant_effects/cleansing/drain

tag @s remove ca.cleanse_drain