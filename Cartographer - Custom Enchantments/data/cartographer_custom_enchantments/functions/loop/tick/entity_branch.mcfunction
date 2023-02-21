# Arrows
execute if entity @s[type=#bb:arrow] run function cartographer_custom_enchantments:loop/tick/arrow

# Hostile Entities
execute if entity @s[type=#bb:hostile] run function cartographer_custom_enchantments:loop/tick/hostile

# Chickens (Transfig)
execute if entity @s[type=chicken] if score @s ca.transfig_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/transfiguration/time

# Trident
execute if entity @s[type=trident] run function cartographer_custom_enchantments:loop/tick/trident

# Armor Stand
execute if entity @s[type=armor_stand] run function cartographer_custom_enchantments:loop/tick/armor_stand

# Evoker Fangs from Evocation
execute if entity @s[type=evoker_fangs,tag=from_evocation] run function cartographer_custom_enchantments:loop/tick/evoker_fangs

# Falling Block tick to stop the block breaking on recoil
execute if entity @s[type=falling_block,tag=ca.stop_breaking] run function cartographer_custom_enchantments:enchant_effects/recoil/kill_barrier