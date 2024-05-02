execute if entity @s[scores={ca.s_cleansing=1},nbt={active_effects:[{id:"minecraft:slowness"}]}] run tag @s add slow_cleanse
execute if entity @s[scores={ca.f_cleansing=1},nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tag @s add fatigue_cleanse
execute if entity @s[scores={ca.w_cleansing=1},nbt={active_effects:[{id:"minecraft:weakness"}]}] run tag @s add weak_cleanse
execute if entity @s[scores={ca.p_cleansing=1},nbt={active_effects:[{id:"minecraft:poison"}]}] run tag @s add poison_cleanse
execute if entity @s[scores={ca.wi_cleansing=1},nbt={active_effects:[{id:"minecraft:wither"}]}] run tag @s add wither_cleanse

execute if entity @s[tag=slow_cleanse,nbt={active_effects:[{id:"minecraft:slowness"}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing/slowness
execute if entity @s[tag=fatigue_cleanse,nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing/fatigue
execute if entity @s[tag=weak_cleanse,nbt={active_effects:[{id:"minecraft:weakness"}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing/weakness
execute if entity @s[tag=poison_cleanse,nbt={active_effects:[{id:"minecraft:poison"}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing/poison
execute if entity @s[tag=wither_cleanse,nbt={active_effects:[{id:"minecraft:wither"}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing/wither

tag @s remove poison_cleanse
tag @s remove fatigue_cleanse
tag @s remove slow_cleanse
tag @s remove weak_cleanse
tag @s remove wither_cleanse